package com.krashidbuilt;

import com.krashidbuilt.lambda.Function;

/**
 * Created by Ben Kauffman on 09/30/16.
 */
public class Main {
    public static void main(String[] args) {
        printHello.invoke();
    }

    static Function printHello = () -> {
            System.out.println("Hello world!");
    };
}
