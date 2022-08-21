setup() {
  . "$TESTMANSH_TEST_BATSCORE_SETUP"
}

@test "codeskel64: list catalog" {
  if [[ ! -f '/run/.containerenv' ]]; then
    skip 'this case can only be tested inside a container'
  fi

  "$DEVCS_BUILD_TARGET" -d

  run "$DEVCS_BUILD_TARGET" -l
  assert_success
}
