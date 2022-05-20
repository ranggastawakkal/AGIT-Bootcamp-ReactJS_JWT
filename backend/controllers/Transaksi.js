import {Op} from 'sequelize';
import Transaksi from '../models/TransaksiModel.js';

export const getTransaksi = async (req, res) => {
    try {
        const dataTransaksi = await Transaksi.findAll({
            attributes: ['id', 'tanggal', 'nama_customer','produk','harga','jumlah']
        });
        res.json(dataTransaksi);
    } catch (error) {
        console.log(error);
    }
}

export const getTransaksibyid = async (req, res) => {
    const id = req.params.id;
    try {
        const dataTransaksi = await Transaksi.findByPk(id);
        res.json(dataTransaksi);
    } catch (error) {
        console.log(error);
    }
}

export const getTransaksibyname = async (req, res) => {
    const transaksi = req.body.transaksi;
    var condition = transaksi ? { transaksi: { [Op.like]: `%${transaksi}%` } } : null;
    try {
        const dataTransaksi = await Transaksi.findAll({ where: condition });
        res.json(dataTransaksi);
    } catch (error) {
        console.log(error);
    }
}

export const AddTransaksi = async (req, res) => {
    const { tanggal,nama_customer,produk,harga,jumlah } = req.body;
    try {
        await Transaksi.create({
            tanggal: tanggal,
            nama_customer: nama_customer,
            produk: produk,
            harga: harga,
            jumlah: jumlah
        });
        res.json({ msg: "Tambah Transaksi Berhasil" });
    } catch (error) {
        console.log(error);
    }
}

export const UpdateTransaksi = async (req, res) => {
    const id = req.params.id;
    const { tanggal,nama_customer,produk,harga,jumlah } = req.body;
    const data = {
        tanggal: tanggal,
        nama_customer: nama_customer,
        produk: produk,
        harga: harga,
        jumlah: jumlah
    }
    try {
        await Transaksi.update(
            data, {
            where: {
                id: id
            }
        }
        );
        res.json({ msg: "Update Transaksi Berhasil" });
    } catch (error) {
        console.log(error);
    }
}

export const DeleteTransaksi = async (req, res) => {
    const id = req.params.id;
    try {
        await Transaksi.destroy({
            where: {
                id: id
            }
        });
        res.json({ msg: "Berhasil Hapus Transaksi" });
    } catch (error) {
        console.log(error);
    }
}

