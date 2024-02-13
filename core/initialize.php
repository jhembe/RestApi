<?php

    defined('DS')? null : define('DS',DIRECTORY_SEPARATOR);

    // Site Root definition for Linux users.
    defined('SITE_ROOT') ? null : define('SITE_ROOT',DS.'opt'.DS.'lampp'.DS.'htdocs'.DS.'restapi-test');

    // Site Root definition for windows users.
    // defined('SITE_ROOT') ? null : define('SITE_ROOT',DS.'xampp'.DS.'htdocs'.DS.'restapi-test');

    defined('INC_PATH') ? null : define('INC_PATH',SITE_ROOT.DS.'includes');
    defined('CORE_PATH') ? null : define('CORE_PATH',SITE_ROOT.DS.'core');

    // load the config file first
    require_once(INC_PATH.DS."config.php");

    // core classes
    require_once(CORE_PATH.DS."Post.php");
    require_once(CORE_PATH.DS."Categories.php");