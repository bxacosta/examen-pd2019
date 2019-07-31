CREATE TABLE persona (
    id INT NOT NULL GENERATED ALWAYS AS IDENTITY
  , cedula VARCHAR(10) NOT NULL
  , direccion VARCHAR(40)
  , tipoDireccion INT NOT NULL
  , nombre VARCHAR(40) NOT NULL
  , PRIMARY KEY (id)
); 
