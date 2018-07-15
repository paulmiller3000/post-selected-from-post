<!doctype html>
<html lang="en">
<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <meta content="utf-8" http-equiv="encoding">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" media="all" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <title>Post from Post</title>
</head>
<body>
    <div class="container">
        <div class="row" style="margin-top: 3rem;">
            <div class="col-sm">
                <h1 align="center">POST from POST</h1>
            </div>
        </div>
    </div> 

    <div class="container">
        <div class="row" style="margin-top: 1rem;">
            <div class="col">
                <p>This was a real-world problem I recently had to solve.</p>
                <p>Use case: Users would enter a date range and return a series of records from the database to a PHP page. Then, they needed to select one record and post it to an existing PHP page.</p>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row" style="margin-top: 1rem;">
            <div class="col-sm">                         
                <form action="" method="post">                    
                    <table class="fit" id="entry">
                        <tr>
                            <td class="fit"><label for="start">Planet (try <strong>Caprica</strong> or <strong>Picon</strong>): </label></td>                            
                        </tr>
                        <tr>                            
                            <td class="fit"><input type="test" id="planet" name="planet" required autofocus /></td>
                        </tr>                        
                    </table>                        
                    <input class="btn btn-primary" type="submit" value="Get Characters" />
                </form>
            </div>
        </div>
    </div>  

    <div class="container" style="margin-top: 2rem;">
        <div class="row">
            <div class="col-sm" id="results">               
                <?php
                require_once('./resources/pdo.php');

                if ( isset($_POST['planet']) ) {

                    $planet = strtolower($_POST['planet']);      
                    $pdo = new myPDO('phppostpost');
                    
                    try {
                        $stmt = $pdo->prepare('CALL devCharacters(?)');
                        $stmt->bindParam(1, $planet, PDO::PARAM_STR);                    
                        $stmt->execute();                        
                        $stmt->setFetchMode(PDO::FETCH_ASSOC);
                    } catch (PDOException $e) {
                        die("Error occurred: " . $e->getMessage());
                    }
                    ?>

                    <div class="table-responsive">
                        
                        <table class="table table-striped table-hover">
                            <thead class="thead-light">
                                <tr>
                                    <th class="fit">Select</th>                                           
                                    <th class="fit" scope="col">Customer First</th>
                                    <th class="fit" scope="col">Customer Last</th>
                                    <th class="fit" scope="col">Planet</th>
                                </tr>
                            </thead>
                            <tbody id="results-body">
                            <?php while ($r = $stmt->fetch()): ?>                             
                                <tr>                                    
                                    <?php echo "<td class='fit'><input type='radio' id='cust-" . $r['customer_id'] ."' name='cust-id' value='". $r['customer_id'] . "' </td>"; ?>
                                    <?php echo "<td class='fit' id='fname-" . $r['customer_id'] ."'>" . $r['first_name'] . "</td>"; ?>
                                    <?php echo "<td class='fit' id='lname-" . $r['customer_id'] ."'>" . $r['last_name'] . "</td>"; ?>
                                    <?php echo "<td class='fit' id='planet-" . $r['customer_id'] ."'>" . $r['origin_planet'] . "</td>"; ?>
                                </tr>
                            <?php endwhile; ?>
                            </tbody>
                        </table>
                    </div>
                    <input class="btn btn-primary" onclick="getSelectedRowData();" type="submit" value="Send" />
                <?php } ?>
            </div>
        </div>
    </div>     

    <script>
        function getSelectedRowData() {             
            const tableRowArray = Array.from([document.getElementById('results-body')][0].rows);

            let custFirst;
            let custLast;
            let custPlanet;

            tableRowArray.forEach((tableRow, i) => {                
                cellButton = tableRow.getElementsByTagName('input');
                if (cellButton[0].checked == true ) {                                                          
                    const rowID = cellButton[0].id.split('-').pop();
                    custFirst = document.getElementById('fname-' + rowID).innerHTML;
                    custLast = document.getElementById('lname-' + rowID).innerHTML;
                    custPlanet = document.getElementById('planet-' + rowID).innerHTML;
                }
            });

            /* Build a hidden form solution to prep for post.
               Source: https://stackoverflow.com/questions/26133808/javascript-post-to-php-page */
            let hiddenForm = document.createElement('form');

            hiddenForm.setAttribute('method', 'post');
            hiddenForm.setAttribute('action', 'newpage.php');
            hiddenForm.setAttribute('target', 'view');

            const fieldCustFirst = document.createElement('input');
            const fieldCustLast = document.createElement('input');
            const fieldCustPlanet = document.createElement('input');

            fieldCustFirst.setAttribute('type', 'hidden');
            fieldCustFirst.setAttribute('name', 'custFirst');
            fieldCustFirst.setAttribute('value', custFirst);

            fieldCustLast.setAttribute('type', 'hidden');
            fieldCustLast.setAttribute('name', 'custLast');
            fieldCustLast.setAttribute('value', custLast);

            fieldCustPlanet.setAttribute('type', 'hidden');
            fieldCustPlanet.setAttribute('name', 'custPlanet');
            fieldCustPlanet.setAttribute('value', custPlanet);

            hiddenForm.appendChild(fieldCustFirst);
            hiddenForm.appendChild(fieldCustLast);
            hiddenForm.appendChild(fieldCustPlanet);

            document.body.appendChild(hiddenForm);

            // Post
            window.open('', 'view');
            hiddenForm.submit();
        } 
    </script>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

</body>
</html>