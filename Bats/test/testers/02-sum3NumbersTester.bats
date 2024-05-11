#!/usr/bin/env bash

setup() {
    load '../test_helper/bats-support/load'
    load '../test_helper/bats-assert/load'
    load '../test_helper/bats-files/load'
    DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"
    PATH="$DIR/../src:$PATH"
}

@test "should return 784" {
    run ./02-sum3Numbers.sh "20" "740" "24"
    assert_output "784"
}

@test "should return 5" {
    run ./02-sum3Numbers.sh "2" "1" "2"
    assert_output --partial "5"
}

@test "should return 60" {
    run ./02-sum3Numbers.sh "20" "14" "26"
    assert_output --partial "60"
}

@test "should return 70" {
    run ./02-sum3Numbers.sh "1" "1" "68"
    assert_output --partial "70"
}

@test "should return 138" {
    run ./02-sum3Numbers.sh "54" "80" "4"
    assert_output --partial "138"
}
