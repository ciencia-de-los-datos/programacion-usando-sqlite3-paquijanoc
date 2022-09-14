-- 
--  La tabla `tbl1` tiene la siguiente estructura:
-- 
--    K0  CHAR(1)
--    K1  INT
--    c12 FLOAT
--    c13 INT
--    c14 DATE
--    c15 FLOAT
--    c16 CHAR(4)
--
--  Escriba una consulta en SQL que devuelva la suma del campo c12.
-- 
--  Rta/
--     SUM(c12)
--  0  15137.63
--
--  >>> Escriba su codigo a partir de este punto <<<
--
from IPython.core.magic import register_cell_magic, register_line_magic

@register_line_magic
def sql(line):
    line = [
        l for l in line.split("\n") if l[0:2] != "--" and l[0:2] not in ["--", "##"]
    ]
    line = "\n".join(line)
    return cur.execute(line).fetchall()

%sql SELECT SUM(c12) FROM tbl1;