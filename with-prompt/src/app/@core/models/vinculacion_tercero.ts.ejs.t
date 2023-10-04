---
to: "<%= appname %>/src/app/@core/models/vinculacion_tercero.ts"
force: true
---
import { Tercero } from './tercero';

export class VinculacionTercero {
    TerceroPrincipalId: Tercero;
    TerceroRelacionadoId: Tercero;
    DependenciaId: number;
}
