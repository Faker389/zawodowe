const expresss = require("express")
const mysql = require("mysql2")
const cors = require("cors")
const app = expresss()

app.use(expresss.json())
app.use(cors())
app.listen(8000)

const connection = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database:"ppzaw"
})
app.get("/meetings",(req,res)=>{
    var objekt = {

    }
    const query = "SELECT * from meetings";
    connection.query(query,[],(err,succes)=>{
        if(err){
            console.log(err)
            return 0
        }
        for(var x=0;x<succes.length;x++){
            if(objekt[succes[x].day]!==undefined){
                objekt[succes[x].day].push({
                    hour:succes[x].hour,
                    importance:succes[x].importance,
                    title:succes[x].title
                })
            }else{
                objekt[succes[x].day]=[{
                    hour:succes[x].hour,
                    importance:succes[x].importance,
                    title:succes[x].title
                }]
            }
           res.json(objekt)
        }
    })
})
app.post("/addMeeting",(req,res)=>{
    const {day,hour,importance,title} = req.body
    const query = "INSERT INTO meetings VALUES(null,?,?,?,?)";
    connection.query(query,[day,hour,importance,title],(err,succes)=>{
        if(err){
            console.log(err)
            return 0;
        }
        res.sendStatus(200)
    })
})