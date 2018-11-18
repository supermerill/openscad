#pragma once

#include "shape.h"
#include "rect.h"
#include "path.h"
#include "svgpage.h"
#include "memory.h"

namespace libsvg {

using shapes_list_t = std::vector<shared_ptr<shape>>;

shapes_list_t *
libsvg_read_file(const char *filename);

void
libsvg_free(shapes_list_t *shapes);

}
