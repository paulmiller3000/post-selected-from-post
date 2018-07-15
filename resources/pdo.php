<?php
    // 2018-07-08 Building as replacement for seperate classes
    class myPDO extends PDO
    {
        public $dbName;

        public function __construct($dbName, $file = './resources/config.ini')
        {            
            if (!$settings = parse_ini_file($file, TRUE)) throw new exception('Unable to open ' . $file . '.');
            
            $dns = $settings[$dbName]['driver'] .
            ':host=' . $settings[$dbName]['host'] .
            ((!empty($settings[$dbName]['port'])) ? (';port=' . $settings[$dbName]['port']) : '') .
            ';dbname=' . $settings[$dbName]['schema'];

            parent::__construct($dns, $settings[$dbName]['username'], $settings[$dbName]['password']);
        }
    } 
?> 