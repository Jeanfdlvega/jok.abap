REPORT zjeandelavega.



PARAMETERS: rb_pedra RADIOBUTTON GROUP grp DEFAULT 'X' USER-COMMAND sel,
            rb_papel RADIOBUTTON GROUP grp,
            rb_teso  RADIOBUTTON GROUP grp.


DATA: lv_computador TYPE c LENGTH 10,
      p_op          TYPE c LENGTH 10,
      lv_resultado  TYPE string,
      lv_seed       TYPE i.

START-OF-SELECTION.

  IF rb_pedra = 'X'.
    p_op = 'Pedra'.
  ELSEIF rb_papel = 'X'.
    p_op = 'Papel'.
  ELSEIF rb_teso = 'X'.
    p_op = 'Tesoura'.
  ENDIF.

  lv_seed = sy-uzeit.


  DATA(lv_rand) = cl_abap_random_int=>create( seed = lv_seed
                                              min = 1
                                              max = 3 )->get_next( ).

  CASE lv_rand.
    WHEN 1.
      lv_computador = 'Pedra'.
    WHEN 2.
      lv_computador = 'Papel'.
    WHEN 3.
      lv_computador = 'Tesoura'.
  ENDCASE.

  IF p_op = lv_computador.
    lv_resultado = 'Empate!'.

  ELSEIF     ( p_op = 'Pedra'   AND lv_computador = 'Tesoura')
          OR ( p_op = 'Papel'   AND lv_computador =   'Pedra')
          OR ( p_op = 'Tesoura' AND lv_computador =   'Papel').
    lv_resultado = 'Você ganhou!'.
  ELSE.
    lv_resultado = 'Computador ganhou!'.
  ENDIF.
  WRITE: / 'Você escolheu:', p_op,
         / 'Computador escolheu:', lv_computador,
         / 'Resultado:', lv_resultado.