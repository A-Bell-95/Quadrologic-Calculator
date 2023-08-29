package main

import (
	"fmt"
	"math/rand"
	"os"
)

func main() {
	var oper1 string
	var oper2 string
	var strflag string
	var i int
	var j int
	var flag int

	// "PO", "AV", "NE", "UN"
	fmt.Println("Введите 1 операнд")
	fmt.Fscan(os.Stdin, &oper1)
	switch oper1 {
	case "PO":
		i = 0
	case "AV":
		i = 1
	case "NE":
		i = 2
	case "UN":
		i = 3
	default:
		fmt.Println("Операнд 1 введен неверно")
		os.Exit(0)
	}

	// "PO", "AV", "NE", "UN"
	fmt.Println("Введите 2 операнд")
	fmt.Fscan(os.Stdin, &oper2)
	switch oper2 {
	case "PO":
		j = 0
	case "AV":
		j = 1
	case "NE":
		j = 2
	case "UN":
		j = 3
	default:
		fmt.Println("Операнд 2 введен неверно")
		os.Exit(0)
	}
	//Безрассдуно - BLI, умеренно - MOD, Осторожно - CAR
	//При любом другом вводе флаг будет выбран случайным образом
	fmt.Println("Введите флаг")
	fmt.Fscan(os.Stdin, &strflag)
	switch strflag {
	case "BLI":
		flag = 1
	case "MOD":
		flag = 2
	case "CAR":
		flag = 3
	default:
		flag = int(rand.Int63n(3) + 1)
		switch flag {
		case 1:
			strflag = "BLI"
		case 2:
			strflag = "MOD"
		case 3:
			strflag = "CAR"
		}
		fmt.Println("Будет выбран cлучайный флаг = ", strflag)
	}

	conjunction(i, j, flag)
	disjunction(i, j, flag)
	implication(i, j, flag)
	eqivivalent(i, j, flag)

}
func conjunction(i int, j int, flag int) {

	if flag == 1 {
		var a = [4][4]string{
			{"PO", "AV", "AV", "PO"},
			{"AV", "AV", "AV", "AV"},
			{"AV", "AV", "NE", "NE"},
			{"PO", "AV", "NE", "UN"}}

		fmt.Println("Результат коньюнкции = ", a[i][j])
	}

	if flag == 2 {
		var a = [4][4]string{
			{"PO", "AV", "AV", "UN"},
			{"AV", "AV", "AV", "AV"},
			{"AV", "AV", "NE", "UN"},
			{"UN", "AV", "UN", "UN"}}

		fmt.Println("Результат коньюнкции = ", a[i][j])
	}

	if flag == 3 {
		var a = [4][4]string{
			{"PO", "AV", "AV", "PO"},
			{"AV", "AV", "AV", "UN"},
			{"AV", "AV", "NE", "UN"},
			{"UN", "UN", "UN", "UN"}}

		fmt.Println("Результат коньюнкции = ", a[i][j])
	}

}
func disjunction(i int, j int, flag int) {

	if flag == 1 {
		var a = [4][4]string{
			{"PO", "PO", "PO", "PO"},
			{"PO", "AV", "AV", "AV"},
			{"PO", "AV", "NE", "NE"},
			{"PO", "AV", "NE", "UN"}}

		fmt.Println("Результат дизьюнкции = ", a[i][j])
	}

	if flag == 2 {
		var a = [4][4]string{
			{"PO", "PO", "PO", "PO"},
			{"PO", "AV", "AV", "AV"},
			{"PO", "AV", "NE", "AV"},
			{"PO", "AV", "AV", "UN"}}

		fmt.Println("Результат дизьюнкции = ", a[i][j])
	}

	if flag == 3 {
		var a = [4][4]string{
			{"PO", "PO", "PO", "PO"},
			{"PO", "AV", "AV", "AV"},
			{"PO", "AV", "NE", "UN"},
			{"PO", "AV", "UN", "UN"}}

		fmt.Println("Результат дизьюнкции = ", a[i][j])
	}

}
func implication(i int, j int, flag int) {

	if flag == 1 {
		var a = [4][4]string{
			{"PO", "AV", "NE", "AV"},
			{"PO", "PO", "NE", "PO"},
			{"PO", "AV", "PO", "AV"},
			{"AV", "PO", "AV", "PO"}}

		fmt.Println("Результат импликации = ", a[i][j])
	}

	if flag == 2 {
		var a = [4][4]string{
			{"PO", "NE", "NE", "UN"},
			{"PO", "PO", "NE", "AV"},
			{"PO", "NE", "PO", "UN"},
			{"UN", "AV", "UN", "AV"}}

		fmt.Println("Результат импликации = ", a[i][j])
	}

	if flag == 3 {
		var a = [4][4]string{
			{"AV", "NE", "NE", "UN"},
			{"PO", "PO", "NE", "UN"},
			{"AV", "NE", "PO", "UN"},
			{"UN", "UN", "UN", "UN"}}

		fmt.Println("Результат импликации = ", a[i][j])
	}

}
func eqivivalent(i int, j int, flag int) {

	if flag == 1 {
		var a = [4][4]string{
			{"PO", "NE", "NE", "AV"},
			{"NE", "PO", "NE", "PO"},
			{"NE", "NE", "PO", "AV"},
			{"AV", "PO", "AV", "PO"}}

		fmt.Println("Результат эквивалентности = ", a[i][j])
	}

	if flag == 2 {
		var a = [4][4]string{
			{"PO", "NE", "NE", "NE"},
			{"NE", "PO", "NE", "AV"},
			{"NE", "NE", "PO", "NE"},
			{"NE", "AV", "NE", "AV"}}

		fmt.Println("Результат эквивалентности = ", a[i][j])
	}

	if flag == 3 {
		var a = [4][4]string{
			{"PO", "NE", "NE", "NE"},
			{"NE", "PO", "NE", "NE"},
			{"NE", "NE", "PO", "NE"},
			{"NE", "NE", "NE", "UN"}}

		fmt.Println("Результат эквивалентности = ", a[i][j])
	}

}
