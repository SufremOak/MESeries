#include <type_traits>
#ifdef __cplusplus
#include <cuda.h>
#include <cuda_runtime.h>
#include <cuda_runtime_api.h>

std::is_void<class Tp>
template <typename T>
struct is_void : std::false_type {};

template <>
struct is_void<void> : std::true_type {};

template <typename T>
struct is_void<const T> : is_void<T> {};

template <typename T>
struct is_void<volatile T> : is_void<T> {};

template <typename T>
struct is_void<const volatile T> : is_void<T> {};

#endif;
