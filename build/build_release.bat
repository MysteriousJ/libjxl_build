@echo off

cl -c /O2 /EHsc /MT /W0 /wd4267 /wd4244 /Fo"jxl_objs/" -I .. -I . -I ../third_party/highway -I ../third_party/brotli/c/include ^
../lib/jxl/dec_ans.cc ^
../lib/jxl/dec_cache.cc ^
../lib/jxl/dec_context_map.cc ^
../lib/jxl/dec_external_image.cc ^
../lib/jxl/dec_frame.cc ^
../lib/jxl/dec_group.cc ^
../lib/jxl/dec_group_border.cc ^
../lib/jxl/dec_huffman.cc ^
../lib/jxl/dec_modular.cc ^
../lib/jxl/dec_noise.cc ^
../lib/jxl/dec_patch_dictionary.cc ^
../lib/jxl/dec_xyb.cc ^
../lib/jxl/decode.cc ^
../lib/jxl/base/cache_aligned.cc ^
../lib/jxl/base/padded_bytes.cc ^
../lib/jxl/box_content_decoder.cc ^
../lib/jxl/color_encoding_internal.cc ^
../lib/jxl/image.cc ^
../lib/jxl/base/data_parallel.cc ^
../lib/jxl/fields.cc ^
../lib/jxl/quant_weights.cc ^
../lib/jxl/headers.cc ^
../lib/jxl/jpeg/jpeg_data.cc ^
../lib/jxl/image_metadata.cc ^
../lib/jxl/frame_header.cc ^
../lib/jxl/modular/modular_image.cc ^
../lib/jxl/modular/encoding/encoding.cc ^
../lib/jxl/modular/encoding/dec_ma.cc ^
../lib/jxl/modular/transform/transform.cc ^
../lib/jxl/modular/transform/palette.cc ^
../lib/jxl/modular/transform/rct.cc ^
../lib/jxl/modular/transform/squeeze.cc ^
../lib/jxl/jpeg/dec_jpeg_data_writer.cc ^
../lib/jxl/jpeg/dec_jpeg_data.cc ^
../lib/jxl/decode_to_jpeg.cc ^
../lib/jxl/icc_codec.cc ^
../lib/jxl/memory_manager_internal.cc ^
../lib/jxl/color_management.cc ^
../lib/jxl/loop_filter.cc ^
../lib/jxl/opsin_params.cc ^
../lib/jxl/quantizer.cc ^
../lib/jxl/ans_common.cc ^
../lib/jxl/coeff_order.cc ^
../lib/jxl/entropy_coder.cc ^
../lib/jxl/splines.cc ^
../lib/jxl/passes_state.cc ^
../lib/jxl/compressed_dc.cc ^
../lib/jxl/toc.cc ^
../lib/jxl/icc_codec_common.cc ^
../lib/jxl/epf.cc ^
../lib/jxl/huffman_table.cc ^
../lib/jxl/ac_strategy.cc ^
../lib/jxl/blending.cc ^
../lib/jxl/chroma_from_luma.cc ^
../lib/jxl/alpha.cc ^
../lib/jxl/image_bundle.cc ^
../lib/jxl/render_pipeline/render_pipeline.cc ^
../lib/jxl/render_pipeline/low_memory_render_pipeline.cc ^
../lib/jxl/render_pipeline/simple_render_pipeline.cc ^
../lib/jxl/render_pipeline/stage_blending.cc ^
../lib/jxl/render_pipeline/stage_chroma_upsampling.cc ^
../lib/jxl/render_pipeline/stage_epf.cc ^
../lib/jxl/render_pipeline/stage_from_linear.cc ^
../lib/jxl/render_pipeline/stage_to_linear.cc ^
../lib/jxl/render_pipeline/stage_gaborish.cc ^
../lib/jxl/render_pipeline/stage_noise.cc ^
../lib/jxl/render_pipeline/stage_patches.cc ^
../lib/jxl/render_pipeline/stage_splines.cc ^
../lib/jxl/render_pipeline/stage_spot.cc ^
../lib/jxl/render_pipeline/stage_tone_mapping.cc ^
../lib/jxl/render_pipeline/stage_write.cc ^
../lib/jxl/render_pipeline/stage_xyb.cc ^
../lib/jxl/render_pipeline/stage_ycbcr.cc ^
../lib/jxl/render_pipeline/stage_upsampling.cc

cl -c /O2 /EHsc /MT /W0 /wd4267 /Fo"hwy_objs/" -I .. -I . -I ../third_party/highway ^
../third_party/highway/hwy/aligned_allocator.cc ^
../third_party/highway/hwy/per_target.cc ^
../third_party/highway/hwy/targets.cc

cl -c /O2 /EHsc /MT /W0 /wd4267 /Fo"brotli_objs/" -I .. -I . -I ../third_party/brotli/c/include ^
../third_party/brotli/c/dec/decode.c ^
../third_party/brotli/c/dec/state.c ^
../third_party/brotli/c/dec/bit_reader.c ^
../third_party/brotli/c/dec/huffman.c ^
../third_party/brotli/c/common/dictionary.c ^
../third_party/brotli/c/common/shared_dictionary.c ^
../third_party/brotli/c/common/constants.c ^
../third_party/brotli/c/common/context.c ^
../third_party/brotli/c/common/platform.c ^
../third_party/brotli/c/common/transform.c

lib jxl_objs/*.obj hwy_objs/*.obj brotli_objs/*.obj /out:jxl_dec_release.lib
