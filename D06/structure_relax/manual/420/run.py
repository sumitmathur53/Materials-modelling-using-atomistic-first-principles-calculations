import ase
import ase.io
import pickle
atoms = ase.io.read('atoms.traj')
f = open('calc.pickle', 'rb')
calc = pickle.load(f)
atoms.set_calculator(calc)
atoms.get_potential_energy()
