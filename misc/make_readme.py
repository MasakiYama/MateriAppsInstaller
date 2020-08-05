#!/usr/bin/pythonimport h5pyimport globimport osdirs_apps = [x for x in glob.glob("../*_*") if os.path.isdir(x)]dict_apps = {}#get app namefor dir_name in dirs_apps:    dict_apps[dir_name[6:]] = dir_name#print(dict_apps)apps_table = {"komega":"Kω","alps":"ALPS","xtapp":"xTAPP",              "espresso":"QUANTUM ESPRESSO", "openmx": "OpenMX",              "modylas": "MODYLAS", "feram": "feram", "gromacs":"Gromacs",              "lammps":"LAMMPS", "ermod":"ERmod", "dsqss":"DSQSS",              "hphi":"HΦ", "mvmc":"mVMC", "tapioca":"TAPIOCA",              "xcrysden":"XCRYSDEN", "ignition":"Nano-Ignition",              "triqs":"TRIQS", "dcore":"DCore", "respack":"RESPACK",              "tenes":"TeNeS" }list_read = ["name", "summary", "license", "official_url", "url_to_ma", "core developers"]with h5py.File("materiapps_info.h5", "r") as fr:    for key, value in apps_table.items():        keys = fr[value].keys()        with open(os.path.join(dict_apps[key], "ReadMe.md"), "w") as fw:            for item in list_read:                if fr[value].get(item) is None:                    continue                if item == "name":                    fw.write("# {} \n\n".format(fr[value].get(item)[()]))                else:                    fw.write("## {} \n\n {}\n".format(item.upper(), fr[value].get(item)[()]))