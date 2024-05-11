#!/usr/bin/env bash

setup() {
    load '../test_helper/bats-support/load'
    load '../test_helper/bats-assert/load'
    load '../test_helper/bats-files/load'
    DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"
    PATH="$DIR/../src:$PATH"
}

arqName="./05-circleArea.sh"
cmd="run $arqName"

@test "should return 4468" {
    $cmd "4"
    assert_output --partial "4468"
}

@test "should return 603" {
    $cmd "201" "3"
    assert_output --partial "603"
}

@test "should return 375" {
    $cmd "15" "25"
    assert_output --partial "375"
}

@test "should return 48" {
    $cmd "12" "4"
    assert_output --partial "48"
}

@test "should return 69" {
    $cmd "3" "23"
    assert_output --partial "69"
}
