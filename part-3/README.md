# Make the first API

## Xcode

1. Generate xcode project

		vapor xcode
		
2. Select the App target, build, and run

## API endpoint [POST /posts]

### Reqeust

**Body**

| Parameter | Description | |
| --- | --- | --- |
| title | The post title | Required |
| content | The post content | Required |

```
Ex: 
{
	"title": "Hello World",
	"content": "This is my first api"
}
```
