// import { relations, sql } from "drizzle-orm";
// import { integer, sqliteTable, text } from "drizzle-orm/sqlite-core";




//  export const jugadores = sqliteTable("jugador",{
//     id: integer("id").primaryKey({autoIncrement: true}),
//     nombre: text("nombre").notNull(),
//     apellido: text("apellido").notNull(),
//     dni : text("dni").notNull(),
//     celular : text("celular").notNull(),
//     fechaNacimiento : text("fechaNacimiento").notNull()
// }
// )




// export const categorias = sqliteTable("categoria",{
//     id: integer("id").primaryKey({autoIncrement: true}),
//     catego: text("categoria"),
//     jugadorId: integer("jugador_id").references(()=>jugadores.id ,{onDelete:'cascade'}),
//     createdAt: text("created_at")
//     .default(sql`CURRENT_TIMESTAMP`)
//     .notNull()
// })


// export const categoriasRelations = relations(categorias, ({ one }) => ({
//   jugador: one(jugadores,{
//     fields: [categorias.jugadorId],
//     references:[jugadores.id]
//   })
// }));
    


    



//  const cuotas = sqliteTable("cuota",{
//     id: integer("id").primaryKey({autoIncrement: true}),
//     mes: integer("mes").unique()
 
// })





