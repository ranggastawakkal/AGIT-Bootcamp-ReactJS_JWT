import { DataTypes } from "sequelize";
import db from "../config/Database.js";

const Transaksi=db.define('transaksi',{
    tanggal:{
        type: DataTypes.STRING
    },
    nama_customer:{
        type: DataTypes.STRING
    },
    produk:{
        type: DataTypes.STRING
    },
    harga:{
        type: DataTypes.FLOAT
    },
    jumlah:{
        type: DataTypes.STRING
    },

},{
    freezeTableName:true
});

export default Transaksi;