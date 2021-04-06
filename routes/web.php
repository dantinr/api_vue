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

//用户接口
Route::any('/user/login',"UserController@login");     //用户登录


//机构指标
Route::get('/orga/orgaList',"OrgaindexController@orgaList");     //机构指标列表
Route::post('/orga/addOrga',"OrgaindexController@addOrga");     //机构指标添加
Route::post('/orga/updFindOrga',"OrgaindexController@updFindOrga");     //机构指标修改查询
Route::post('/orga/editOrga',"OrgaindexController@editOrga");     //机构指标修改
Route::post('/orga/delOrga',"OrgaindexController@delOrga");     //机构指标删除
Route::post('/orga/findOrga',"OrgaindexController@findOrga");     //机构指标查询
Route::get('/orga/generateOrgaId',"OrgaindexController@generateOrgaId");     //生成机构指标ID
Route::get('/orga/orgaFill',"OrgaindexController@orgaFill");    //填充机构指标数据

Route::get('/hello',"ComboController@hello");
Route::post('/test',"ComboController@test");
Route::get('/combo/list',"ComboController@comboList");      //套餐列表
Route::get('/combo/add',"ComboController@addCombo");      //添加套餐
Route::get('/combo/edit',"ComboController@editCombo");      //编辑套餐
Route::get('/combo/delete',"ComboController@deleteCombo");      //删除套餐
Route::get('/combo/fill',"ComboController@fillData");      //填充数据
