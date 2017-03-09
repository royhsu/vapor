# Make the first API

## Xcode

1. Generate xcode project

		vapor xcode
		
2. Select the App target, build, and run

## [POST /posts]

Create a Post.

### Reqeust (application/json)

**Body**

| Parameter | Description | |
| --- | --- | --- |
| title | The post title | Required |
| content | The post content | Required |

```
Ex: 
{
	"title": "Hello World",
	"content": "Welcome to my first post"
}
```

### Response (201)
