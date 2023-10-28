import { NextResponse } from "next/server";
// import { PrismClient } from "@prisma/client";
import { PrismaClient } from "@prisma/client";

export async function GET(){
    try {
        return NextResponse.json({ messages: "Hello"})
    } catch (error) {
        console.log("Something wrong!", error);
    }
}

// export async function POST(req, res){
//     try {
//         const reqBody = await req.json();

//         const prisma = new PrismClient();

//         let result = await prisma.brand.create({
//             data: reqBody
//         })

//         return NextResponse.json({ status: "success", data: result })

//     } catch (error) {
//         console.log("something wrong!", error);
//     }
// }

export async function POST(req, res){
    try {
        let reqBody = await req.json();
        let prisma = new PrismaClient();

        let reqData = await prisma.brand.create({
            data: reqBody
        })

        return NextResponse.json(
            { status: "success", data: reqData } ,
            {
            status: 200
        }
        )

    } catch (error) {
        console.log("Something is wrong!", error);
    }
}