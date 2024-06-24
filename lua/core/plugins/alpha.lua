return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.startify")
		vim.notify("Loaded alpha")

		dashboard.section.header.val = {
      [[MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM]],
			[[MMMMMMMMMWXOdc;'.         ..'xWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM]],
			[[MMMMMMWKx:'                 .dWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM]],
			[[MMMMWOc.                    .OMMMMMMNKOxdllccclloxOXWMMMMMMMMMMWN0kdolcccllodx0XN0dooooooooooooooooood0WMMMWNKkdolcccclodONMMMMMMWNKkxolcccclodk0XWMMMMM]],
			[[MMW0c.                      :XMMWKxc,.             .;o0WMMMMWKd:'.             'c'                   .xWW0d:'.           'OMMMNOo:'.            ..:xKWMM]],
			[[MWx.            'coxkkkdl;..oWXx;.                    .:0WW0c.                .:;                    c0x;.               ;XWKo'                     .oXM]],
			[[Md.           ;kNWMMMMMMMWKk0k,                         'kx.        .cllc;.. .xx.                   .:'            .     oKo.                         :M]],
			[[M.           :XMMMMMMMMMMMMNo.        .,lxkOko,          ..         'oxk000OOKWKkxkk:         'dkkxo'         .;ok000ko;,l;         .:dkOkxl.          M]],
			[[M            oWMMMMMMMMMMMWd.        'kNMMMMMMXc          .              .':lxXMMMMK;        .xWMMNl         ,OWMMMMMMMWO,         :0WMMMMMMO'         M]],
			[[M            .dXWMMMMMWNKko.        .dWMMMMMMMNc         :d;.                 ;0MMWd.        :XMMMO'        .xMMMMMMMMMMx.        '0MMMMMMMM0'        .M]],
			[[M.             .;clolc:'..,.         cXMMMMMW0c.        'ONXOdl:;,'.           dWM0'        .OMMMMk.         :0WMMMMWN0Ol         .xNMMMMMNk,         cM]],
			[[Mo.                      'x:          'coooc,.         ,OO:,cx0XXX0c.         .OMNc         lNMMMMK,          .;cllc:'.lx.         .,lool:'         .lXM]],
			[[MWk,                     lN0,                        .o0d.    .....          'kWMk.        ,KMMMMMWO'                 .kNx.                       .;kWMM]],
			[[MMMNx:.                 'OMMXd'                   .:xXXl.                 'okKMMK;        .dWMMMMMMWKl.               :XMW0c.                  .':oONMMM]],
			[[MMMMMWXOoc;'........',;ckNMMMMNOo:'..      ...,cokXWMMXxl;'...     ...,cdONMMMMWk'........cXMMMMMMMMMWKxc,..      ...;OWMMMWKxl;'..      ..';ld0Kklo0WMM]],
			[[MMMMMMMMMWNNXXKKXXNNWWMMMMMMMMMMWNXK0OOkOO0KNWMMMMMMMMMMWNXK0OOkOO0KXWMMMMMMMMMNKKKKKKKKKNMMMMMMMMMMMMMMWXK0OOOOO0KXNMMMMMMMMMWNK0OOOOO0KXNWMMMWNXXWMMMM]],
		}

		alpha.setup(dashboard.opts)
	end,
}
