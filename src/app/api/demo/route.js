import { NextResponse } from "next/server";
import { PrismClient } from "@prisma/client";

export async function GET(){
    try {
        return NextResponse.json({ messages: "Hello"})
    } catch (error) {
        console.log("Something wrong!", error);
    }
}

export async function POST(req, res){
    try {
        const prisma = new PrismClient();
        const reqBody = await req.json();

        let result = await prisma.brand.create({
            data: reqBody
        })

        return NextResponse.json({ status: "success", data:reqBody })

    } catch (error) {
        console.log("something wrong!", error);
    }
}