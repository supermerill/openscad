cgal {
  DEFINES += ENABLE_CGAL

  # Optionally specify location of CGAL using the 
  # CGALDIR env. variable
  CGAL_DIR = $$(CGALDIR)
  !isEmpty(CGAL_DIR) {
    QMAKE_INCDIR += $$CGAL_DIR/include
    QMAKE_LIBDIR += $$CGAL_DIR/lib
    message("CGAL location: $$CGAL_DIR")
  }

# MXE    LIBS += -lgmp -lmpfr -lCGAL
  QMAKE_CXXFLAGS += -frounding-math 
  LIBS += -lCGAL -lmpfr -lgmp

  *clang* {
    QMAKE_CXXFLAGS -= -frounding-math
  }
}
