package main

import (
	"github.com/aws/aws-lambda-go/lambda"
)
func main()  {
	lambda.Start(template)
}

func template() error {
	return nil
}