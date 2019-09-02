CLASS zcl_bmp_manifest DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES:
      if_apack_manifest.


    METHODS:
      constructor.

ENDCLASS.



CLASS zcl_bmp_manifest IMPLEMENTATION.
  METHOD constructor.
    if_apack_manifest~descriptor = VALUE #(
      group_id = 'pixelbaker.com'
      artifact_id = 'abap-bitmap'
      version = '1.0.0'
      git_url = 'https://github.com/pixelbaker/ABAP-Bitmap.git' ).
  ENDMETHOD.
ENDCLASS.
