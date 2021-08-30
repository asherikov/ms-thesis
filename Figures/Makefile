all: dot msc octave

dot:
	dot -Teps nao_mod_arch.dot -o nao_mod_arch.eps
	neato -Teps walk_cycle.dot -o walk_cycle.eps
	neato -Teps nao_joints.dot -o nao_joints.eps

msc:
	mscgen -Teps -o nao_mod_seq.eps nao_mod_seq.msc
	sed -i "" -e "s/Helvetica/Times/g" nao_mod_seq.eps
#	eps2eps nao_mod_seq_nocrop.eps nao_mod_seq.eps

octave:
	octave --no-history --silent --eval "ds_plot"
	octave --no-history --silent --eval "ss_plot"
	octave --no-history --silent foottraj.m 
	octave --no-history --silent footsteps.m 
	octave --no-history --silent as_com.m
	octave --no-history --silent ip_com.m
	octave --no-history --silent hiproll.m
	octave --no-history --silent robot_foottraj.m
	octave --no-history --silent sim_nodist.m
	octave --no-history --silent sim_infeas.m
	octave --no-history --silent qp_time.m
