#!/usr/bin/env bash

setup() {
    load '../test_helper/bats-support/load'
    load '../test_helper/bats-assert/load'
    load '../test_helper/bats-files/load'
    DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"
    PATH="$DIR/../src:$PATH"
}

arqName="./03-average4numbers.sh"

@test "should return 47" {
    run $arqName "18" "100" "40" "30"
    assert_output --partial "47"
}

@test "should return 5" {
    run $arqName "10" "0" "10" "0"
    assert_output --partial "5"
}

@test "should return 372.5" {
    run $arqName "8" "1475" "1" "6"
    assert_output --partial "372.5"
}

@test "should return 4.75" {
    run $arqName "4" "8" "4" "3"
    assert_output --partial "4.75"
}

@test "should return 43.75" {
    run $arqName "54" "80" "4" "37"
    assert_output --partial "43.75"
}
