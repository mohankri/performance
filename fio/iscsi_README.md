## Over ISCSI Samsung 850 EVO

```
mixed: io=6164.2MB, bw=24131KB/s, iops=6032, runt=261575msec
    slat (usec): min=5, max=848, avg= 8.70, stdev= 2.45
    clat (usec): min=1, max=134398, avg=148.76, stdev=163.76
     lat (usec): min=68, max=134411, avg=157.75, stdev=163.95
    clat percentiles (usec):
     |  1.00th=[   90],  5.00th=[   97], 10.00th=[  106], 20.00th=[  131],
     | 30.00th=[  139], 40.00th=[  143], 50.00th=[  147], 60.00th=[  155],
     | 70.00th=[  171], 80.00th=[  181], 90.00th=[  189], 95.00th=[  201],
     | 99.00th=[  235], 99.50th=[  334], 99.90th=[  828], 99.95th=[ 1384],
     | 99.99th=[ 4016]
    bw (KB  /s): min= 8221, max=15488, per=50.02%, avg=12069.71, stdev=790.33
    lat (usec) : 2=0.01%, 4=0.01%, 10=0.01%, 50=0.01%, 100=6.70%
    lat (usec) : 250=92.57%, 500=0.37%, 750=0.23%, 1000=0.06%
    lat (msec) : 2=0.05%, 4=0.01%, 10=0.01%, 50=0.01%, 250=0.01%
  cpu          : usr=2.75%, sys=7.82%, ctx=1578152, majf=0, minf=7728
  IO depths    : 1=100.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.1%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=1578031/w=0/d=0, short=r=0/w=0/d=0

Run status group 0 (all jobs):
  MIXED: io=6164.2MB, aggrb=24131KB/s, minb=24131KB/s, maxb=24131KB/s, mint=261575msec, maxt=261575msec

Disk stats (read/write):
  sdb: ios=789135/788987, merge=0/0, ticks=118052/112408, in_queue=230112, util=87.41%

```


