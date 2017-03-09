# RESTful APIs

## [GET /posts/:id]

Get data of the post with the associated id.

### Request

**Parameters**

| Parameter | Description | |
| --- | --- | --- |
| id | The post id | Required |

### Response (200 application/json)

**Body**

| Parameter | Description |
| --- | --- |
| data | The data of post |

Ex:

	{
		data: {
			"_id": "7b2dc0588459b93b6fa09589",
			"title": "Hello World",
			"content": "This is my first post"
		}
	}
	
## Resource Protocol

1. Make controller conforms to the Resource protocol
	

## Reference

* [REST](https://zh.wikipedia.org/wiki/REST)
* [什麼是 REST 跟 RESTful?](https://ihower.tw/blog/archives/1542)