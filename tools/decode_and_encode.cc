// Copyright (c) the JPEG XL Project Authors. All rights reserved.
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

#include <stdio.h>

#include <string>

#include "lib/extras/codec.h"
#include "lib/jxl/base/data_parallel.h"
#include "lib/jxl/base/status.h"
#include "lib/jxl/codec_in_out.h"
#include "tools/thread_pool_internal.h"

namespace {

// Reads an input file (typically PNM) with color_space hint and writes to an
// output file (typically PNG) which supports all required metadata.
int Convert(int argc, char** argv) {
  if (argc != 4 && argc != 5) {
    fprintf(stderr, "Args: in colorspace_description out [bits]\n");
    return 1;
  }
  const std::string& pathname_in = argv[1];
  const std::string& desc = argv[2];
  const std::string& pathname_out = argv[3];

  jxl::CodecInOut io;
  jxl::extras::ColorHints color_hints;
  jpegxl::tools::ThreadPoolInternal pool(4);
  color_hints.Add("color_space", desc);
  if (!jxl::SetFromFile(pathname_in, color_hints, &io, &pool)) {
    fprintf(stderr, "Failed to read %s\n", pathname_in.c_str());
    return 1;
  }

  if (!jxl::EncodeToFile(io, pathname_out, &pool)) {
    fprintf(stderr, "Failed to write %s\n", pathname_out.c_str());
    return 1;
  }

  return 0;
}

}  // namespace

int main(int argc, char** argv) { return Convert(argc, argv); }
