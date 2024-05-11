#!/usr/bin/env bash

setup() {
    load '../test_helper/bats-support/load'
    load '../test_helper/bats-assert/load'
    load '../test_helper/bats-files/load'
    DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"
    PATH="$DIR/../src:$PATH"
}

@test "should return 10.000" {
    run ./01-halfNumber.sh '20'
    assert_output --partial '10.000'
}

@test "should return 5" {
    run ./01-halfNumber.sh "10"
    assert_output --partial "5"
}

@test "should return 60" {
    run ./01-halfNumber.sh "120"
    assert_output --partial "60"
}

@test "should return 70" {
    run ./01-halfNumber.sh "140"
    assert_output --partial "70"
}

@test "should return 69" {
    run ./01-halfNumber.sh "138"
    assert_output --partial "69"
}
