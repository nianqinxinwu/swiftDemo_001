//
//  MetalFile001.metal
//  SwiftDemo_001
//
//  Created by 常远 on 2021/7/23.
//

#include <metal_stdlib>

using namespace metal;
//bool isOK = true;
//char string = 6789;
//
//size_t c = 1;
//ptrdiff_t f = 2;

//int4 test = int4(0,1,2,3);
//texture1d<T, access a = access::sampler, METAL_ENABLE_IF(1, 1)>;

//texture1d<T, access a = access::sampler, "1">

//enum class coord { normalized, pixel };
//
//enum class filter { nearest, linear };


constexpr sampler s(coord::pixel, address::clamp_to_zero, filter::linear);
constexpr sampler a(coord::normalized);
constexpr sampler b(address::repeat);


/// device：设备地址空间
/// threadgroup：线程组地址空间
/// constant：常量地址空间
/// thread： 线程地址空间
void CCTestFouncitionE(device int *g_data,
                       threadgroup int *l_data,
                       constant float *c_data)
{
    //...
}
