# \DefaultApi

All URIs are relative to *https://dpi.com/api*

 Method                                               | HTTP request              | Description        
------------------------------------------------------|---------------------------|--------------------
 [**ModelV1Get**](DefaultApi.md#ModelV1Get)           | **Get** /model/v1         | List all models    
 [**ModelV1IdDelete**](DefaultApi.md#ModelV1IdDelete) | **Delete** /model/v1/{id} | Delete a model     
 [**ModelV1IdGet**](DefaultApi.md#ModelV1IdGet)       | **Get** /model/v1/{id}    | Query a model      
 [**ModelV1IdPut**](DefaultApi.md#ModelV1IdPut)       | **Put** /model/v1/{id}    | Update a model     
 [**ModelV1Post**](DefaultApi.md#ModelV1Post)         | **Post** /model/v1        | Create a new model 

## ModelV1Get

> []Model ModelV1Get(ctx).Execute()

List all models

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DefaultApi.ModelV1Get(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.ModelV1Get``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ModelV1Get`: []Model
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.ModelV1Get`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiModelV1GetRequest struct via the builder pattern

### Return type

[**[]Model**](Model.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

## ModelV1IdDelete

> ModelV1IdDelete(ctx, id).Execute()

Delete a model

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    id := "id_example" // string | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    r, err := apiClient.DefaultApi.ModelV1IdDelete(context.Background(), id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.ModelV1IdDelete``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters

 Name    | Type                | Description                                                                 | Notes 
---------|---------------------|-----------------------------------------------------------------------------|-------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc. 
 **id**  | **string**          |                                                                             |

### Other Parameters

Other parameters are passed through a pointer to a apiModelV1IdDeleteRequest struct via the builder pattern

 Name | Type | Description | Notes 
------|------|-------------|-------

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

## ModelV1IdGet

> Model ModelV1IdGet(ctx, id).Execute()

Query a model

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    id := "id_example" // string | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DefaultApi.ModelV1IdGet(context.Background(), id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.ModelV1IdGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ModelV1IdGet`: Model
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.ModelV1IdGet`: %v\n", resp)
}
```

### Path Parameters

 Name    | Type                | Description                                                                 | Notes 
---------|---------------------|-----------------------------------------------------------------------------|-------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc. 
 **id**  | **string**          |                                                                             |

### Other Parameters

Other parameters are passed through a pointer to a apiModelV1IdGetRequest struct via the builder pattern

 Name | Type | Description | Notes 
------|------|-------------|-------

### Return type

[**Model**](Model.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

## ModelV1IdPut

> ModelV1IdPut(ctx, id).Model(model).Execute()

Update a model

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    id := "id_example" // string | 
    model := *openapiclient.NewModel() // Model | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    r, err := apiClient.DefaultApi.ModelV1IdPut(context.Background(), id).Model(model).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.ModelV1IdPut``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters

 Name    | Type                | Description                                                                 | Notes 
---------|---------------------|-----------------------------------------------------------------------------|-------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc. 
 **id**  | **string**          |                                                                             |

### Other Parameters

Other parameters are passed through a pointer to a apiModelV1IdPutRequest struct via the builder pattern

 Name | Type | Description | Notes 
------|------|-------------|-------

**model** | [**Model**](Model.md) | |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

## ModelV1Post

> ModelV1Post(ctx).Model(model).Execute()

Create a new model

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    model := *openapiclient.NewModel() // Model | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    r, err := apiClient.DefaultApi.ModelV1Post(context.Background()).Model(model).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.ModelV1Post``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters

### Other Parameters

Other parameters are passed through a pointer to a apiModelV1PostRequest struct via the builder pattern

 Name      | Type                  | Description | Notes 
-----------|-----------------------|-------------|-------
 **model** | [**Model**](Model.md) |             |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

