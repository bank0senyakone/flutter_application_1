const express = require("express");
const mysql = require("mysql");
const core = require("cors");
const app = express();
app.use(express.json());
app.use(core());

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  database: "tbcpr",
  port: 3307,
});
db.connect((err) => {
  if (err) {
    console.log("ບໍ່");
    return;
  }
  console.log("1ສາມາດ");
});
app.get("/book", function (req, res) {
  try {
    const sql = "select * from tbbook";
    db.query(sql, (err, result, fields) => {
      if (err) {
        console.log(err);
        return res.status(400).send();
      }
      console.log(fields)
      return res.status(200).send(result);
    });
  } catch (err) {
    console.log(err);
    return res.status(500).send();
  }
});

app.get("/book/:bookid",(req,res)=>{
    try{

        const bid = req.params.bookid
        const sql = "select * from tbbook where bookid like '%"+bid+"%' or bookname like '%"+bid+"%' or price like '"+bid+"'";
        //const val =[bid]
        db.query(sql,(err,result)=>{
          if(err){
            console.log(err)
            return res.status(400).send()
          }
          return res.status(200).send(result)
        })
    }catch(err){
        console.log(err);
        return res.status(500).send();
    }
})
app.delete("/book/:bid",(req,res)=>{
  try{
    const bid =req.params.bid;
    const val = [bid];
    const sql="delete from tbbook bookid=?";
    db.query(sql,val,(err,result)=>{
      if(err){
        console.log(err)
        return res.status(400).send({msg:"error in database query"});
      }
      return res.status(200).send({msg:"ລົບຂໍ້ມູນແລ້ວ"})
    })

  }catch(err){
    console.log(err);
    return res.status(500).send({ msg: "Internal Server Error" });
  }
})


app.post("/book",(req,res)=>{
  try{
    const sql ="insert into tbbook values(?,?,?,?)";
    const {bookid,bookname,price,page} =req.body;
    const val=[bookid,bookname,price,page];
    db.query(sql,val,(err,result)=>{
      if(err){
        console.log(err);
        return res.status(400).send({"msg":"error in database query"});
      }
      return res.status(200).send({"msg":"ບັນທຶກຂໍ້ມູນແລ້ວ"})
    })
  }
  catch(err){
    console.log(err);
    return res.status(500).send({ msg: "Internal Server Error" });
  }
})


app.put("/book/:bid",(req,res)=>{
  try{
    const bid = req.params.bid;
    const sql ="update tbbook set bookname=?,price=?,page=? where bookid=?";
    const {bookname,price,page} =req.body;
    const val=[bookname,price,page,bid];
    db.query(sql,val,(err,result)=>{
      if(err){
        console.log(err);
        return res.status(400).send({"msg":"error in database query"});
      }
      return res.status(200).send({"msg":"ແກ້ໄຂ ຂໍ້ມູນແລ້ວ"})
    })
  }
  catch(err){
    console.log(err);
    return res.status(500).send({ msg: "Internal Server Error" });
  }
})
app.listen(3000, () => console.log("Server is runing on port 3000"));
