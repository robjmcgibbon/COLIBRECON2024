import matplotlib.pyplot as plt
import swiftsimio as sw

simulation_dir = "/cosma8/data/dp004/colibre/Runs/L0050N0376/Thermal"
snap_nr = 127   # z=0
soap_filename = f'{simulation_dir}/SOAP-HBT/halo_properties_{snap_nr:04}.hdf5'
soap = sw.load(soap_filename)

stellar_mass = soap.exclusive_sphere_50kpc.stellar_mass.to('Msun')
total_mass = soap.spherical_overdensity_200_crit.total_mass.to('Msun')
mask = (stellar_mass != 0) & (total_mass != 0)

fig, ax = plt.subplots(1)
ax.loglog(total_mass[mask], stellar_mass[mask], '.')
ax.set_xlabel(r'$M_{200c}$ [$M_\odot$]')
ax.set_ylabel(r'$M_{*}$ [$M_\odot$]')
plt.savefig('smhm.png')
plt.close()
