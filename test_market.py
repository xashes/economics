from market import elasticity

def test_elasticity():
    assert elasticity(4, 6, 120, 80) == 1
    assert elasticity(6, 4, 80, 120) == 1