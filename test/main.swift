//
//  main.swift
//  quadricEquation
//
//  Created by Katerina on 02.07.2020.
//  Copyright © 2020 CHAS. All rights reserved.
//

import Foundation

// Уравнение

var a: Double = 10
var b: Double = 3
var c: Double = -13

var x1: Double
var x2: Double
var descr: Double = b * b - 4 * a * c

if (descr > 0) {
    x1 = -b + sqrt(descr) / (2 * a)
    x2 = -b - sqrt(descr) / (2 * a)
    print("Уравнение имеет два квадратных корня:", x1, "и", x2)
} else if (descr == 0) {
    x1 = -b + sqrt(descr) / (2 * a)
    print("Уравнение имеет один квадратный корень:", x1)
} else {
    print("Уравнение не имеет квадратных корней")
}

 
// Треугольник

var kat1 = 17
var kat2 = 21

var hyp = Int(round(sqrt(Double(kat1 * kat1 + kat2 * kat2))))
var square =  Int(kat1*kat2 / 2)
var per = Int(kat1+kat2+hyp)
print("Исходя из размеров катетов \(kat1) и \(kat2), длина гипотенузы будет \(hyp), площадь будет равна \(square), периметр – \(per)")



// Вклад

print("Введите сумму вклада ниже")
var summ = Int(readLine()!)

print("Теперь введите готовую ставку в процентах")
var percent = Double(readLine()!)


// Теперь вычислим сумму с процентами через 5 лет по форумуле S=(P*I*t:K):100, где S-начисленный тариф, Р-сумма вклада, I-годовая ставка, t-срок депозита(в днях), K-число дней в году (по умолчанию всегда 365)

var invest: Int = Int((Double(summ!)*Double(percent!)*1825 / 365) / 100) //Вот это место не до конца понятно, так как складывать Int и Double мы не можем. Поэтому я и перевел значение, которое по логике должно быть Int в Double, и обратно сумму в Int

var newSumm: Int = Int(summ! + invest)

print("Через пять лет ваша сумма вклада составит \(newSumm)")

