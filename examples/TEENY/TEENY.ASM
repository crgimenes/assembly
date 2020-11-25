; Tiniest C Startup code for Turbo C 2.0 Tiny Model

_TEXT           SEGMENT BYTE PUBLIC 'CODE'
_TEXT           ENDS
_DATA           SEGMENT WORD PUBLIC 'DATA'
_DATA           ENDS
_BSS            SEGMENT WORD PUBLIC 'BSS'
_BSS            ENDS

DGROUP          GROUP      _TEXT, _DATA, _BSS

_TEXT           SEGMENT
                ORG        100H
BEGIN:
_TEXT           ENDS

                END        BEGIN

