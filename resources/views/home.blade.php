<html>
    <head>
        <style>
            a {
              display: block;
              margin-bottom: 10px;
            }
        </style>
        <title>Cool Blog Homepage</title>
    </head>
    <body>
        <h1>Welcome to the homepage of my cool blog!</h1>
        <a href="{{ url('/about') }}">About</a>
        <p>Today is {{ date('j F Y') }}.</p>
        // MY CODE //
        <h2>Blog posts:</h2>
        <!-- Use of a for each loop to loop trough each post and display it in the DOM -->
        @foreach($posts as $post)
            <a href="{{ url('/blog/' . $post->id) }}">{{ $post->title }}</a>
        @endforeach
        // MY CODE //
    </body>
</html>