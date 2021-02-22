<?php

require_once MODELS . "patientModel.php";
require_once MODELS . "testsModel.php";

//OBTAIN THE ACCION PASSED IN THE URL AND EXECUTE IT AS A FUNCTION

//Keep in mind that the function to be executed has to be one of the ones declared in this controller
// TODO Implement the logic


/* ~~~ CONTROLLER FUNCTIONS ~~~ */

/**
 * This function calls the corresponding model function and includes the corresponding view
 */
function getAllTests($type = false)
{
    $tests = getAll();
    $testInfo = $type ? getTypeInfo($type) : $type;
    require_once 'views/tests/tests.php';
}

/**
 * This function calls the corresponding model function and includes the corresponding view
 */
function getAllResult($result)
{
    $tests = getByResult($result);
    require_once 'views/tests/tests.php';
}

/**
 * This function calls the corresponding model function and includes the corresponding view
 */
function getAllType($type)
{
    $tests = getByType($type);
    require_once 'views/tests/tests.php';
}

/**
 * This function calls the corresponding model function and includes the corresponding view
 */
function getTestInfo($type)
{
    $info = getTypeInfo($type);
    require_once 'views/tests/testsInfo.php';
}



/**
 * This function includes the error view with a message
 */
//function error($errorMsg)
//{
//    require_once VIEWS . "/error/error.php";
//}
