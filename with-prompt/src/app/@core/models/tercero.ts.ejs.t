---
to: "<%= appname %>/src/app/@core/models/tercero.ts"
force: true
---
export class Tercero{
  Id: number;
  NombreCompleto: string;
  PrimerNombre: string;
  SegundoNombre: string;
  PrimerApellido: string;
  SegundoApellido: string;
  LugarOrigen: number;
  FechaNacimiento: any;
  Activo: boolean;
  UsuarioWSO2: string;
}
