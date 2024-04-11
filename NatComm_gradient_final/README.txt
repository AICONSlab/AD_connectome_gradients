Written by Drs. Julie Ottoy and Min Su Kang, updated April 11 2024.

1. Open a terminal and cd into the unzipped folder NatComm_gradient_final. Then follow the instructions below.

2. Create a virtual environment called 'gradient_natcomm' and install pip: conda create -n gradient_natcomm python=3.7.6 pip
2.1 If Apple silicon chip, then instead do:
## create empty environment
conda create -n gradient_natcomm
## activate
conda activate gradient_natcomm
## use x86_64 architecture channel(s)
conda config --env --set subdir osx-64
## install python
conda install python=3.7.6
## check that your python version is 3.7.6
python --version
## skip step 3 below.

3. Activate the environment: conda activate gradient_natcomm

4. Install the requirements: pip install -r requirements.txt

5. Open Gradients_extraction.ipynb with Jupyter notebook.

6. In the notebook, select the kernel gradient_natcomm. You are now ready to run the notebook! However, if you are unable to select the kernel, try the following:
6.1 conda install -c conda-forge ipykernel
6.2 python -m ipykernel install --user --name=gradient_natcomm
6.3 now go back to the notebook and select the kernel gradient_natcomm

7. Run each of the cells:
7.1 "Gradient extraction of template and individual connectomes + alignment": this will create, within each Diagnostic_groupx folder, the 1) template gradient and 2) subjectwise (template-aligned) gradients.
7.2 "Plotting of the original template connectome, the extracted gradients, and explained variances": this will plot the results.
7.3 "Gradient visualization in 3D space (MNI)": this will visualize the gradients in MNI space - run both cells. Note that you need MINC tools installed: https://bic-mni.github.io/ -> download version2 1.9.18. If you get a 'permission denied' error while running the script, then enter in the command line: chmod 751 plot_gradient_MNI_schaefer.sh 
8. If you want to rerun cell 1, you need to remove your previous output: rm -r Diagnostic_group*/{Subjectwise_alignedwith_Diagnostic_group*,Template_Diagnostic_group*}

9. The NatComm_gradient_final/Outputs folder shows what your output should be after running the notebook.

10. Deactivate the virtual environment: conda deactivate. Delete the virtual environment: conda remove -n gradient_natcomm --all 



For questions, please contact julie.jj.ottoy@gmail.com  
   