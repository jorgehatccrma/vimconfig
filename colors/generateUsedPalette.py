import subprocess as sp
import sys

from list_colors import colors


if __name__ == '__main__':
    ps1 = sp.Popen(['grep', '-Eo', ' \d+', sys.argv[1]], stdout=sp.PIPE)
    ps2 = sp.Popen(['sort'], stdin=ps1.stdout, stdout=sp.PIPE)
    result = sp.check_output(['uniq'], stdin=ps2.stdout)
    #  print(result)
    #  result = [int(x) for x in result.split()]
    for r in result.split():
        k = int(r)
        #  print(k, colors[k])
        print('{{"key": "{k}", "color": "{v}", "fg_color": "#aaaaaa"}},'.format(k=k, v=colors[k]))
