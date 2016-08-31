##fio output
##===========
```
/dev/sdb: (g=0): rw=randrw, bs=4K-4K/4K-4K/4K-4K, ioengine=libaio, iodepth=1
fio-2.1.3
Starting 1 process
Jobs: 1 (f=1): [m] [1.5% done] [0KB/0KB/0KB /s] [0/0/0 iops] [eta 05h:29m:26s]        
/dev/sdb: (groupid=0, jobs=1): err= 0: pid=5713: Wed Aug 31 16:12:04 2016
  mixed: io=14401MB, bw=49155KB/s, iops=12288, runt=300001msec
    slat (usec): min=2, max=1132, avg= 5.41, stdev= 2.70
    clat (usec): min=0, max=76220, avg=31.74, stdev=90.54
     lat (usec): min=31, max=76225, avg=37.29, stdev=90.64
    clat percentiles (usec):
     |  1.00th=[   30],  5.00th=[   30], 10.00th=[   30], 20.00th=[   31],
     | 30.00th=[   31], 40.00th=[   31], 50.00th=[  102], 60.00th=[  105],
     | 70.00th=[  107], 80.00th=[  111], 90.00th=[  126], 95.00th=[  127],
     | 99.00th=[  145], 99.50th=[  169], 99.90th=[  398], 99.95th=[  652],
     | 99.99th=[ 2384]
    bw (KB  /s): min=19792, max=26336, per=50.01%, avg=24581.48, stdev=500.22
    lat (usec) : 2=0.01%, 4=0.01%, 10=0.01%, 20=0.01%, 50=49.88%
    lat (usec) : 100=0.08%, 250=49.76%, 500=0.21%, 750=0.02%, 1000=0.01%
    lat (msec) : 2=0.02%, 4=0.01%, 10=0.01%, 50=0.01%, 100=0.01%
  cpu          : usr=3.90%, sys=10.27%, ctx=3686538, majf=0, minf=9200
  IO depths    : 1=100.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=3686609/w=0/d=0, short=r=0/w=0/d=0

Run status group 0 (all jobs):
  MIXED: io=14401MB, aggrb=49154KB/s, minb=49154KB/s, maxb=49154KB/s, mint=300001msec, maxt=300001msec

Disk stats (read/write):
  sdb: ios=1843693/1842972, merge=0/0, ticks=210500/54380, in_queue=264464, util=87.42%
```
```
Total IO

mixed: io=14401MB, bw=49155KB/s, iops=12288, runt=300001msec

Performed 14GB of IO @ 49.155 MB/s for total 12288 IOPS(Block Size 4K).
```

```
Submission Latency (How long did it take to submit IO to the Kernel ?)
==================
slat (usec): min=2, max=1132, avg= 5.41, stdev= 2.70

linux scheduler will have impact on this number. Check /sys/block/sd[x]/queue/scheduler
```




