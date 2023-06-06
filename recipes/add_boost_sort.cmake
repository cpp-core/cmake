cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_boost_sort)
  add_component(array REPO boostorg TAG boost-1.82.0)
  add_component(assert REPO boostorg TAG boost-1.82.0)
  add_component(bind REPO boostorg TAG boost-1.82.0)
  add_component(concept_check REPO boostorg TAG boost-1.82.0)
  add_component(config REPO boostorg TAG boost-1.82.0)
  add_component(container_hash REPO boostorg TAG boost-1.82.0)
  add_component(conversion REPO boostorg TAG boost-1.82.0)
  add_component(core REPO boostorg TAG boost-1.82.0)
  add_component(describe REPO boostorg TAG boost-1.82.0)
  add_component(detail REPO boostorg TAG boost-1.82.0)
  add_component(function REPO boostorg TAG boost-1.82.0)
  add_component(function_types REPO boostorg TAG boost-1.82.0)
  add_component(functional REPO boostorg TAG boost-1.82.0)
  add_component(fusion REPO boostorg TAG boost-1.82.0)
  add_component(io REPO boostorg TAG boost-1.82.0)
  add_component(iterator REPO boostorg TAG boost-1.82.0)
  add_component(move REPO boostorg TAG boost-1.82.0)
  add_component(mpl REPO boostorg TAG boost-1.82.0)
  add_component(mp11 REPO boostorg TAG boost-1.82.0)
  add_component(optional REPO boostorg TAG boost-1.82.0)
  add_component(predef REPO boostorg TAG boost-1.82.0)
  add_component(preprocessor REPO boostorg TAG boost-1.82.0)
  add_component(range REPO boostorg TAG boost-1.82.0)
  add_component(regex REPO boostorg TAG boost-1.82.0)
  add_component(smart_ptr REPO boostorg TAG boost-1.82.0)
  add_component(sort REPO boostorg TAG boost-1.82.0)
  add_component(static_assert REPO boostorg TAG boost-1.82.0)
  add_component(throw_exception REPO boostorg TAG boost-1.82.0)
  add_component(typeof REPO boostorg TAG boost-1.82.0)
  add_component(type_traits REPO boostorg TAG boost-1.82.0)
  add_component(tuple REPO boostorg TAG boost-1.82.0)
  add_component(utility REPO boostorg TAG boost-1.82.0)
endfunction()
