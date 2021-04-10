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
Route::get('/hello',"ComboController@hello");
Route::post('/test',"ComboController@test");
Route::get('/combo/list',"ComboController@comboList");      //套餐列表
Route::get('/combo/add',"ComboController@addCombo");      //添加套餐
Route::get('/combo/edit',"ComboController@editCombo");      //编辑套餐
Route::get('/combo/delete',"ComboController@deleteCombo");      //删除套餐
Route::get('/combo/fill',"ComboController@fillData");      //填充数据
Route::get('/combo/fill',"ComboController@fillData");//填充数据
Route::get('/combo/delete',"ComboController@deleteCombo");//删除套餐
Route::post('/combo/edit',"ComboController@editCombo");//编辑套餐
Route::get('/combo/list',"ComboController@comboList");//查询列表数据
Route::get('/combo/search',"ComboController@combosearch");//查询搜索
Route::post('/addCombo',"ComboController@addCombo");//添加套餐


//机构指标
Route::get('/orga/orgaList',"OrgaindexController@orgaList");     //机构指标列表
Route::post('/orga/addOrga',"OrgaindexController@addOrga");     //机构指标添加
Route::post('/orga/editOrga',"OrgaindexController@editOrga");     //机构指标修改
Route::post('/orga/delOrga',"OrgaindexController@delOrga");     //机构指标删除
Route::post('/orga/findOrga',"OrgaindexController@findOrga");     //机构指标查询
Route::get('/orga/generateOrgaId',"OrgaindexController@generateOrgaId");     //生成机构指标ID
Route::get('/orga/orgaFill',"OrgaindexController@orgaFill");    //填充机构指标数据
//项目
Route::post('/item/additem',"ExamitemController@additem");//添加
Route::get('/item/fill',"ExamitemController@fillData");
Route::get('/item/list',"ExamitemController@itemList");//获取列表数据
Route::post('/item/edit',"ExamitemController@edititem");//修改
Route::get('/item/deleteitem',"ExamitemController@deleteitem");//删除
Route::get('/item/searchitem',"ExamitemController@searchitem");//搜索



// 预约信息查询
Route::get('/book/search',"BookController@bookSearch");  //查询数据
Route::get('/book/page',"BookController@bookPage");      //分页
Route::get('/book/edit',"BookController@editBook");      //编辑套餐



// Liwei测试
Route::get('/liwei/test',"LiweiController@test");
Route::post('/liwei/test2',"LiweiController@test2");

//体检机构
Route::get('/examo/hello',"ExamoragController@hello");
Route::post('/examo/test',"ExamoragController@test");
Route::get('/examo/list',"ExamoragController@examList");//列表
Route::get('/examo/add',"ExamoragController@addExam");//添加
Route::get('/examo/edit',"ExamoragController@editExam");//编辑
Route::get('/examo/delete',"ExamoragController@deleteExam");      //删除套餐
Route::get('/examo/find',"ExamoragController@findExam");
Route::get('/examo/fill',"ExamoragController@fillData");

//Route::get('/hello',"ComboController@hello");
//Route::post('/test',"ComboController@test");
//Route::get('/combo/list',"ComboController@comboList");      //套餐列表
//Route::get('/combo/add',"ComboController@addCombo");      //添加套餐
//Route::get('/combo/edit',"ComboController@editCombo");      //编辑套餐
//Route::get('/combo/delete',"ComboController@deleteCombo");      //删除套餐
//Route::get('/combo/fill',"ComboController@fillData");      //填充数据

//标准指标管理
Route::get('/hello',"ExamindexController@hello");
Route::post('/test',"ExamindexController@test");
Route::get('/exam/list',"ExamindexController@comboList");      //套餐列表
Route::get('/exam/add',"ExamindexController@addCombo");      //添加套餐
Route::get('/exam/edit',"ExamindexController@editCombo");      //编辑套餐
Route::get('/exam/delete',"ExamindexController@deleteCombo");      //删除套餐
Route::get('/exam/fill',"ExamindexController@fillData");
Route::get('/exam/deleteCombo',"ExamindexController@deleteCombo");
Route::get('/exam/inquire',"ExamindexController@inquire");
