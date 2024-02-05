
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* Styling */
        *{
            margin: 0;
            padding: 0;
        }

        html{
            font-family: sans-serif;
        }

        body{
            background-color: grey;
            padding: 30px;
        }

        h1{
            text-align: center;
            font-size: 60px;
        }
    </style>
    <title>{{$post->title}}</title>
</head>
<body>
    <!-- Check if Post exists -->
    @if($post)
    <!-- Display post info -->
        <h1>{{ $post->title }}</h1>
        <p class="date">Post created: {{$post->created}}</p>
        <article>{{$post->content}}</article>
    @else
    <!-- Error handling -->
        <h1>Post not found</h1>
    @endif
    <a href="/">Return Home</a>
</body>
</html>
