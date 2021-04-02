<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::get('/hello',"ComboController@hello");
Route::post('/test',"ComboController@test");
Route::get('/combo/list',"ComboController@comboList");      //套餐列表
Route::get('/combo/add',"ComboController@addCombo");      //添加套餐
Route::get('/combo/edit',"ComboController@editCombo");      //编辑套餐
Route::get('/combo/delete',"ComboController@deleteCombo");      //删除套餐
Route::get('/combo/fill',"ComboController@fillData");      //填充数据



//体检机构
Route::post('/exam/test',"ExamoragController@test");
Route::get('/exam/list',"ExamoragController@examList");//列表
Route::get('/exam/add',"ExamoragController@addExam");//添加
Route::get('/exam/edit',"ExamoragController@editExam");//编辑
Route::get('/exam/delete',"ExamoragController@deleteExam");      //删除套餐
Route::get('/exam/find',"ExamoragController@findExam");  
Route::get('/exam/fill',"ExamoragController@fillData");  
