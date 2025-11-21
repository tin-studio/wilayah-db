const fs = require('fs');
const mysql = require('mysql');

let conf = {host:'localhost',port:3306,user:'pclist',password:'pclist',database:'wilayah_db'}

//total csv kolom 5
//index array kolom 4
//nama wilayah = array index 4
//cara deteksi wilayah
//kolom 2 berisi data kosong = provinsi (array index 1)
//kolom 3 berisi data kosong = kabupaten (array index 2)
//kolom 4 berisi data kosong = kecamatan (array index 3)
//semua kolom terisi data (array index 0,1,2,3) = desa



let wilayah = fs.readFileSync('wilayah.csv',{encoding:'utf-8'});
async function parse(){
    let placeholder = "#comma#"
    let lines = String(wilayah).split('\n');
    for(var line of lines){
        let commaparsed = line.replace(/"(.*?)"/g,str => str.replace(',',placeholder));
        let columns = String(commaparsed).split(',');
        columns = columns.map(s => s.replace(new RegExp(placeholder,'g'),','));
        columns = columns.map(dbl => dbl.replace(/"/g,''));
        let provinsi = columns[0];
        let kabupaten = columns[0]+columns[1];
        let kecamatan = columns[0]+columns[1]+columns[2];
        let desa = columns[0]+columns[1]+columns[2]+columns[3];
        if(columns[1] === ''){
            let query = "INSERT INTO `wilayah_db`.`provinsi` (`id`, `nama_wilayah`) VALUES (\""+provinsi+"\",\""+columns[4]+"\");"
            await queryproc(query).catch((e)=>{console.log(e); return})
            
        }else if(columns[2] === ''){
            let query = "INSERT INTO `wilayah_db`.`kabupaten` (`id`, `parent_id`, `nama_wilayah`) VALUES (\""+kabupaten+"\",\""+provinsi+"\",\""+columns[4]+"\");"
            await queryproc(query).catch((e)=>{console.log(e); return})
            
        }else if(columns[3] === ''){
            let query = "INSERT INTO `wilayah_db`.`kecamatan` (`id`, `parent_id`, `nama_wilayah`) VALUES (\""+kecamatan+"\",\""+kabupaten+"\",\""+columns[4]+"\");"
            await queryproc(query).catch((e)=>{console.log(e); return})
        }else{
            let query = "INSERT INTO `wilayah_db`.`desa` (`id`, `parent_id`, `nama_wilayah`) VALUES (\""+desa+"\",\""+kecamatan+"\",\""+columns[4]+"\");"
            await queryproc(query).catch((e)=>{console.log(e); return})
        }
        await sleep(40)
    }
}
async function sleep(ms){
    return new Promise((resolve, reject) => { setTimeout(() => {
        resolve()
    }, ms); })
}

function queryproc(query){
    let db = mysql.createConnection(conf);
    db.connect()
    return new Promise((resolve, reject) => { 
        db.query(query,(er,res)=>{
            if(er)reject(er)
            resolve(res)
        })
        db.end()
     })
    
}

parse()