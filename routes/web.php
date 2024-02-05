<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// MY CODE //
// Home page route
Route::get('/', function() {
    $posts = DB::table('blog_posts')->get(); // Get all posts from the database
    return view('home', ['posts'=> $posts]); // Display home page
});
// MY CODE //

Route::get('/about', function () {
    return view('about');
});

Route::get('/greeting/{name}', function($name){
    return view('greeting', ['name'=>$name]);
});

Route::get('legal/{subsection}', function($subsection){
    return view('legal', ['subsection'=>$subsection]);
})->where('subsection', ('tos|privacy'));

Route::get('/', function() {
    $posts = DB::table('blog_posts')->get();
    return view('home', ['posts'=> $posts]);
});


// MY CODE //
// Blog post route
Route::get('/blog/{id}', function($id){
    $post = DB::table('blog_posts')->where('id', $id)->first(); // Get post with specific ID
    return view('blog', ['post'=> $post]); // Display blog page
});
// MY CODE //