# coqui-aarch-segmentation-fault

## Instructions
1. `git clone git@github.com:mariano-balto/coqui-aarch-segmentation-fault.git`
2. `cd coqui-aarch-segmentation-fault`
3. `docker build . -t coqui-aarch-segmentation-fault`
4. `docker run coqui-aarch-segmentation-fault`
5. Expected output:
```
docker run coqui-aarch-segmentation-fault
+ set -o pipefail
+ main
+ catchsegv python -m coqui_worker.app
TensorFlow: v2.9.1-11-gf8242ebc005
 Coqui STT: v1.4.0-alpha.6-0-g90331e49
INFO: Created TensorFlow Lite XNNPACK delegate for CPU.
Fatal Python error: Segmentation fault

Current thread 0x0000ffffb9cda420 (most recent call first):
  File "/opt/asr/venv/lib/python3.9/site-packages/stt/impl.py", line 205 in FinishStream
  File "/opt/asr/venv/lib/python3.9/site-packages/stt/__init__.py", line 342 in finishStream
  File "/opt/asr/coqui_worker/app.py", line 23 in seg_fault
  File "/opt/asr/coqui_worker/app.py", line 27 in <module>
  File "/usr/lib/python3.9/runpy.py", line 87 in _run_code
  File "/usr/lib/python3.9/runpy.py", line 197 in _run_module_as_main
Segmentation fault (core dumped)
*** Segmentation fault

Backtrace:
/lib/aarch64-linux-gnu/libc.so.6(gsignal+0xe0)[0xffffb9e74d78]
linux-vdso.so.1(__kernel_rt_sigreturn+0x0)[0xffffb9ff77dc]
/opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so(+0x67e97c)[0xffffaf33897c]
/opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so(_ZN6tflite3ops7builtin15fully_connected15EvalHybridDenseEP13TfLiteContextP10TfLiteNodeP26TfLiteFullyConnectedParamsPNS2_6OpDataEPK12TfLiteTensorSD_SD_PSB_SE_SE_SE_SE_SE_+0x374)[0xffffaf11b314]
/opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so(_ZN6tflite3ops7builtin15fully_connected10EvalHybridEP13TfLiteContextP10TfLiteNodeP26TfLiteFullyConnectedParamsPNS2_6OpDataEPK12TfLiteTensorSD_SD_PSB_SE_SE_SE_SE_SE_+0x8ec)[0xffffaf11c60c]
/opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so(_ZN6tflite3ops7builtin15fully_connected13EvalQuantizedILNS2_10KernelTypeE1EEE12TfLiteStatusP13TfLiteContextP10TfLiteNodeP26TfLiteFullyConnectedParamsPNS2_6OpDataEPK12TfLiteTensorSG_SG_PSE_+0x1a4)[0xffffaf123c2c]
/opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so(_ZN6tflite3ops7builtin15fully_connected4EvalILNS2_10KernelTypeE1EEE12TfLiteStatusP13TfLiteContextP10TfLiteNode+0x1c4)[0xffffaf1246f4]
/opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so(_ZN6tflite8Subgraph6InvokeEv+0x4a0)[0xffffaf26af28]
/opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so(_ZN6tflite11Interpreter6InvokeEv+0x2a4)[0xffffaf26e754]
/opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so(+0x1fd0e0)[0xffffaeeb70e0]
/opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so(+0x1f9114)[0xffffaeeb3114]
/opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so(+0x1f992c)[0xffffaeeb392c]
/opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so(+0x1fa188)[0xffffaeeb4188]
/opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so(+0x1fa20c)[0xffffaeeb420c]
/opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so(+0x1fa30c)[0xffffaeeb430c]
/opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so(+0x1fa3a0)[0xffffaeeb43a0]
/opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so(STT_FinishStream+0x14)[0xffffaeeb5984]
/opt/asr/venv/lib/python3.9/site-packages/stt/_impl.cpython-39-aarch64-linux-gnu.so(+0x9328)[0xffffaf527328]
python[0x4af678]
python(_PyObject_MakeTpCall+0x2ec)[0x5b953c]
python(_PyEval_EvalFrameDefault+0x4724)[0x53090c]
python[0x5bb6b0]
python(_PyFunction_Vectorcall+0x80)[0x5bbaf8]
python(_PyEval_EvalFrameDefault+0x41b4)[0x53039c]
python[0x5bb6b0]
python(_PyFunction_Vectorcall+0x80)[0x5bbaf8]
python(_PyEval_EvalFrameDefault+0x6c8)[0x52c8b0]
python[0x5bb6b0]
python(_PyFunction_Vectorcall+0x80)[0x5bbaf8]
python(_PyEval_EvalFrameDefault+0x460)[0x52c648]
python[0x52aa78]
python(_PyEval_EvalCodeWithName+0x60)[0x52bbf8]
python(PyEval_EvalCode+0x38)[0x69f130]
python[0x5de5c4]
python[0x4af2a0]
python(_PyEval_EvalFrameDefault+0x460)[0x52c648]
python(_PyFunction_Vectorcall+0x3f0)[0x5bbe68]
python(_PyEval_EvalFrameDefault+0x460)[0x52c648]
python(_PyFunction_Vectorcall+0x3f0)[0x5bbe68]
python(PyObject_Call+0x200)[0x5b9108]
python[0x6d66a8]
python(Py_RunMain+0x80)[0x6d6928]
python(Py_BytesMain+0x24)[0x6d72b4]
/lib/aarch64-linux-gnu/libc.so.6(__libc_start_main+0xe8)[0xffffb9e61e10]
python[0x5c24f8]

Memory map:

00400000-00901000 r-xp 00000000 103:01 2643985 /usr/bin/python3.9
00910000-00911000 r--p 00500000 103:01 2643985 /usr/bin/python3.9
00911000-00955000 rw-p 00501000 103:01 2643985 /usr/bin/python3.9
00955000-00979000 rw-p 00000000 00:00 0
36f83000-37548000 rw-p 00000000 00:00 0 [heap]
ffff84000000-ffff84021000 rw-p 00000000 00:00 0
ffff84021000-ffff88000000 ---p 00000000 00:00 0
ffff8c000000-ffff8c021000 rw-p 00000000 00:00 0
ffff8c021000-ffff90000000 ---p 00000000 00:00 0
ffff94000000-ffff94021000 rw-p 00000000 00:00 0
ffff94021000-ffff98000000 ---p 00000000 00:00 0
ffff990aa000-ffff994b5000 rw-p 00000000 00:00 0
ffff994b5000-ffff994b6000 ---p 00000000 00:00 0
ffff994b6000-ffff99cb6000 rw-p 00000000 00:00 0
ffff99cb6000-ffff99cb7000 ---p 00000000 00:00 0
ffff99cb7000-ffff9a4b7000 rw-p 00000000 00:00 0
ffff9a4b7000-ffff9a4b8000 ---p 00000000 00:00 0
ffff9a4b8000-ffff9acb8000 rw-p 00000000 00:00 0
ffff9b0b9000-ffff9b5c5000 r--s 105a8000 103:01 2366981 /tmp/kenlm_es.scorer
ffff9b5c5000-ffff9b801000 r--s 1036d000 103:01 2366981 /tmp/kenlm_es.scorer
ffff9b801000-ffffabb6f000 r--s 00000000 103:01 2366981 /tmp/kenlm_es.scorer
ffffabb6f000-ffffabc71000 rw-p 00000000 00:00 0
ffffabc71000-ffffae999000 r--s 00000000 103:01 2366980 /tmp/model.tflite
ffffae999000-ffffae99e000 r-xp 00000000 103:01 2644970 /usr/lib/python3.9/lib-dynload/termios.cpython-39-aarch64-linux-gnu.so
ffffae99e000-ffffae9ad000 ---p 00005000 103:01 2644970 /usr/lib/python3.9/lib-dynload/termios.cpython-39-aarch64-linux-gnu.so
ffffae9ad000-ffffae9ae000 r--p 00004000 103:01 2644970 /usr/lib/python3.9/lib-dynload/termios.cpython-39-aarch64-linux-gnu.so
ffffae9ae000-ffffae9b0000 rw-p 00005000 103:01 2644970 /usr/lib/python3.9/lib-dynload/termios.cpython-39-aarch64-linux-gnu.so
ffffae9b0000-ffffae9c3000 r-xp 00000000 103:01 779888 /usr/lib/aarch64-linux-gnu/libresolv-2.31.so
ffffae9c3000-ffffae9d2000 ---p 00013000 103:01 779888 /usr/lib/aarch64-linux-gnu/libresolv-2.31.so
ffffae9d2000-ffffae9d3000 r--p 00012000 103:01 779888 /usr/lib/aarch64-linux-gnu/libresolv-2.31.so
ffffae9d3000-ffffae9d4000 rw-p 00013000 103:01 779888 /usr/lib/aarch64-linux-gnu/libresolv-2.31.so
ffffae9d4000-ffffae9d6000 rw-p 00000000 00:00 0
ffffae9d6000-ffffae9db000 r-xp 00000000 103:01 779855 /usr/lib/aarch64-linux-gnu/libnss_dns-2.31.so
ffffae9db000-ffffae9ea000 ---p 00005000 103:01 779855 /usr/lib/aarch64-linux-gnu/libnss_dns-2.31.so
ffffae9ea000-ffffae9eb000 r--p 00004000 103:01 779855 /usr/lib/aarch64-linux-gnu/libnss_dns-2.31.so
ffffae9eb000-ffffae9ec000 rw-p 00005000 103:01 779855 /usr/lib/aarch64-linux-gnu/libnss_dns-2.31.so
ffffae9ec000-ffffae9f7000 r-xp 00000000 103:01 779857 /usr/lib/aarch64-linux-gnu/libnss_files-2.31.so
ffffae9f7000-ffffaea07000 ---p 0000b000 103:01 779857 /usr/lib/aarch64-linux-gnu/libnss_files-2.31.so
ffffaea07000-ffffaea08000 r--p 0000b000 103:01 779857 /usr/lib/aarch64-linux-gnu/libnss_files-2.31.so
ffffaea08000-ffffaea09000 rw-p 0000c000 103:01 779857 /usr/lib/aarch64-linux-gnu/libnss_files-2.31.so
ffffaea09000-ffffaea4f000 rw-p 00000000 00:00 0
ffffaea4f000-ffffaea56000 r-xp 00000000 103:01 779890 /usr/lib/aarch64-linux-gnu/librt-2.31.so
ffffaea56000-ffffaea65000 ---p 00007000 103:01 779890 /usr/lib/aarch64-linux-gnu/librt-2.31.so
ffffaea65000-ffffaea66000 r--p 00006000 103:01 779890 /usr/lib/aarch64-linux-gnu/librt-2.31.so
ffffaea66000-ffffaea67000 rw-p 00007000 103:01 779890 /usr/lib/aarch64-linux-gnu/librt-2.31.so
ffffaea67000-ffffaec2c000 r-xp 00000000 103:01 779902 /usr/lib/aarch64-linux-gnu/libstdc++.so.6.0.28
ffffaec2c000-ffffaec3b000 ---p 001c5000 103:01 779902 /usr/lib/aarch64-linux-gnu/libstdc++.so.6.0.28
ffffaec3b000-ffffaec46000 r--p 001c4000 103:01 779902 /usr/lib/aarch64-linux-gnu/libstdc++.so.6.0.28
ffffaec46000-ffffaec49000 rw-p 001cf000 103:01 779902 /usr/lib/aarch64-linux-gnu/libstdc++.so.6.0.28
ffffaec49000-ffffaec4c000 rw-p 00000000 00:00 0
ffffaec4c000-ffffaeca8000 r-xp 00000000 103:01 2646031 /opt/asr/venv/lib/python3.9/site-packages/stt/lib/libkenlm.so
ffffaeca8000-ffffaecb7000 ---p 0005c000 103:01 2646031 /opt/asr/venv/lib/python3.9/site-packages/stt/lib/libkenlm.so
ffffaecb7000-ffffaecb9000 r--p 0005b000 103:01 2646031 /opt/asr/venv/lib/python3.9/site-packages/stt/lib/libkenlm.so
ffffaecb9000-ffffaecba000 rw-p 0005d000 103:01 2646031 /opt/asr/venv/lib/python3.9/site-packages/stt/lib/libkenlm.so
ffffaecba000-ffffaf4f2000 r-xp 00000000 103:01 2646032 /opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so
ffffaf4f2000-ffffaf502000 ---p 00838000 103:01 2646032 /opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so
ffffaf502000-ffffaf517000 r--p 00838000 103:01 2646032 /opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so
ffffaf517000-ffffaf51b000 rw-p 0084d000 103:01 2646032 /opt/asr/venv/lib/python3.9/site-packages/stt/lib/libstt.so
ffffaf51b000-ffffaf51e000 rw-p 00000000 00:00 0
ffffaf51e000-ffffaf52e000 r-xp 00000000 103:01 2367514 /opt/asr/venv/lib/python3.9/site-packages/stt/_impl.cpython-39-aarch64-linux-gnu.so
ffffaf52e000-ffffaf53d000 ---p 00010000 103:01 2367514 /opt/asr/venv/lib/python3.9/site-packages/stt/_impl.cpython-39-aarch64-linux-gnu.so
ffffaf53d000-ffffaf53e000 r--p 0000f000 103:01 2367514 /opt/asr/venv/lib/python3.9/site-packages/stt/_impl.cpython-39-aarch64-linux-gnu.so
ffffaf53e000-ffffaf540000 rw-p 00010000 103:01 2367514 /opt/asr/venv/lib/python3.9/site-packages/stt/_impl.cpython-39-aarch64-linux-gnu.so
ffffaf540000-ffffaf580000 rw-p 00000000 00:00 0
ffffaf580000-ffffaf5fd000 r-xp 00000000 103:01 1052446 /usr/lib/aarch64-linux-gnu/libssl.so.1.1
ffffaf5fd000-ffffaf60d000 ---p 0007d000 103:01 1052446 /usr/lib/aarch64-linux-gnu/libssl.so.1.1
ffffaf60d000-ffffaf616000 r--p 0007d000 103:01 1052446 /usr/lib/aarch64-linux-gnu/libssl.so.1.1
ffffaf616000-ffffaf61a000 rw-p 00086000 103:01 1052446 /usr/lib/aarch64-linux-gnu/libssl.so.1.1
ffffaf61a000-ffffaf640000 r-xp 00000000 103:01 2644953 /usr/lib/python3.9/lib-dynload/_ssl.cpython-39-aarch64-linux-gnu.so
ffffaf640000-ffffaf64f000 ---p 00026000 103:01 2644953 /usr/lib/python3.9/lib-dynload/_ssl.cpython-39-aarch64-linux-gnu.so
ffffaf64f000-ffffaf650000 r--p 00025000 103:01 2644953 /usr/lib/python3.9/lib-dynload/_ssl.cpython-39-aarch64-linux-gnu.so
ffffaf650000-ffffaf657000 rw-p 00026000 103:01 2644953 /usr/lib/python3.9/lib-dynload/_ssl.cpython-39-aarch64-linux-gnu.so
ffffaf657000-ffffaf797000 rw-p 00000000 00:00 0
ffffaf797000-ffffaf7ba000 r-xp 00000000 103:01 779835 /usr/lib/aarch64-linux-gnu/liblzma.so.5.2.4
ffffaf7ba000-ffffaf7c9000 ---p 00023000 103:01 779835 /usr/lib/aarch64-linux-gnu/liblzma.so.5.2.4
ffffaf7c9000-ffffaf7ca000 r--p 00022000 103:01 779835 /usr/lib/aarch64-linux-gnu/liblzma.so.5.2.4
ffffaf7ca000-ffffaf7cb000 rw-p 00023000 103:01 779835 /usr/lib/aarch64-linux-gnu/liblzma.so.5.2.4
ffffaf7cb000-ffffaf7d3000 r-xp 00000000 103:01 2644946 /usr/lib/python3.9/lib-dynload/_lzma.cpython-39-aarch64-linux-gnu.so
ffffaf7d3000-ffffaf7e2000 ---p 00008000 103:01 2644946 /usr/lib/python3.9/lib-dynload/_lzma.cpython-39-aarch64-linux-gnu.so
ffffaf7e2000-ffffaf7e3000 r--p 00007000 103:01 2644946 /usr/lib/python3.9/lib-dynload/_lzma.cpython-39-aarch64-linux-gnu.so
ffffaf7e3000-ffffaf7e4000 rw-p 00008000 103:01 2644946 /usr/lib/python3.9/lib-dynload/_lzma.cpython-39-aarch64-linux-gnu.so
ffffaf7e4000-ffffaf7f3000 r-xp 00000000 103:01 779793 /usr/lib/aarch64-linux-gnu/libbz2.so.1.0.4
ffffaf7f3000-ffffaf803000 ---p 0000f000 103:01 779793 /usr/lib/aarch64-linux-gnu/libbz2.so.1.0.4
ffffaf803000-ffffaf804000 r--p 0000f000 103:01 779793 /usr/lib/aarch64-linux-gnu/libbz2.so.1.0.4
ffffaf804000-ffffaf805000 rw-p 00010000 103:01 779793 /usr/lib/aarch64-linux-gnu/libbz2.so.1.0.4
ffffaf805000-ffffaf809000 r-xp 00000000 103:01 2644928 /usr/lib/python3.9/lib-dynload/_bz2.cpython-39-aarch64-linux-gnu.so
ffffaf809000-ffffaf819000 ---p 00004000 103:01 2644928 /usr/lib/python3.9/lib-dynload/_bz2.cpython-39-aarch64-linux-gnu.so
ffffaf819000-ffffaf81a000 r--p 00004000 103:01 2644928 /usr/lib/python3.9/lib-dynload/_bz2.cpython-39-aarch64-linux-gnu.so
ffffaf81a000-ffffaf81b000 rw-p 00005000 103:01 2644928 /usr/lib/python3.9/lib-dynload/_bz2.cpython-39-aarch64-linux-gnu.so
ffffaf81b000-ffffaf89b000 rw-p 00000000 00:00 0
ffffaf89b000-ffffaf89c000 r-xp 00000000 103:01 2644949 /usr/lib/python3.9/lib-dynload/_opcode.cpython-39-aarch64-linux-gnu.so
ffffaf89c000-ffffaf8ac000 ---p 00001000 103:01 2644949 /usr/lib/python3.9/lib-dynload/_opcode.cpython-39-aarch64-linux-gnu.so
ffffaf8ac000-ffffaf8ad000 r--p 00001000 103:01 2644949 /usr/lib/python3.9/lib-dynload/_opcode.cpython-39-aarch64-linux-gnu.so
ffffaf8ad000-ffffaf8ae000 rw-p 00002000 103:01 2644949 /usr/lib/python3.9/lib-dynload/_opcode.cpython-39-aarch64-linux-gnu.so
ffffaf8ae000-ffffaf97f000 rw-p 00000000 00:00 0
ffffaf97f000-ffffafa29000 r-xp 00000000 103:01 3396406 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_generator.cpython-39-aarch64-linux-gnu.so
ffffafa29000-ffffafa3e000 ---p 000aa000 103:01 3396406 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_generator.cpython-39-aarch64-linux-gnu.so
ffffafa3e000-ffffafa3f000 r--p 000af000 103:01 3396406 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_generator.cpython-39-aarch64-linux-gnu.so
ffffafa3f000-ffffafa66000 rw-p 000b0000 103:01 3396406 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_generator.cpython-39-aarch64-linux-gnu.so
ffffafa66000-ffffafa68000 rw-p 00000000 00:00 0
ffffafa68000-ffffafa73000 r-xp 00000000 103:01 3396415 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_sfc64.cpython-39-aarch64-linux-gnu.so
ffffafa73000-ffffafa87000 ---p 0000b000 103:01 3396415 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_sfc64.cpython-39-aarch64-linux-gnu.so
ffffafa87000-ffffafa88000 r--p 0000f000 103:01 3396415 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_sfc64.cpython-39-aarch64-linux-gnu.so
ffffafa88000-ffffafa89000 rw-p 00010000 103:01 3396415 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_sfc64.cpython-39-aarch64-linux-gnu.so
ffffafa89000-ffffafa9e000 r-xp 00000000 103:01 3396410 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_pcg64.cpython-39-aarch64-linux-gnu.so
ffffafa9e000-ffffafab8000 ---p 00015000 103:01 3396410 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_pcg64.cpython-39-aarch64-linux-gnu.so
ffffafab8000-ffffafab9000 r--p 0001f000 103:01 3396410 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_pcg64.cpython-39-aarch64-linux-gnu.so
ffffafab9000-ffffafabb000 rw-p 00020000 103:01 3396410 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_pcg64.cpython-39-aarch64-linux-gnu.so
ffffafabb000-ffffafabc000 rw-p 00000000 00:00 0
ffffafabc000-ffffaface000 r-xp 00000000 103:01 3396412 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_philox.cpython-39-aarch64-linux-gnu.so
ffffaface000-ffffafaeb000 ---p 00012000 103:01 3396412 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_philox.cpython-39-aarch64-linux-gnu.so
ffffafaeb000-ffffafaec000 r--p 0001f000 103:01 3396412 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_philox.cpython-39-aarch64-linux-gnu.so
ffffafaec000-ffffafaee000 rw-p 00020000 103:01 3396412 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_philox.cpython-39-aarch64-linux-gnu.so
ffffafaee000-ffffafb03000 r-xp 00000000 103:01 3396408 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_mt19937.cpython-39-aarch64-linux-gnu.so
ffffafb03000-ffffafb1d000 ---p 00015000 103:01 3396408 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_mt19937.cpython-39-aarch64-linux-gnu.so
ffffafb1d000-ffffafb1e000 r--p 0001f000 103:01 3396408 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_mt19937.cpython-39-aarch64-linux-gnu.so
ffffafb1e000-ffffafb20000 rw-p 00020000 103:01 3396408 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_mt19937.cpython-39-aarch64-linux-gnu.so
ffffafb20000-ffffafb78000 r-xp 00000000 103:01 3396383 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_bounded_integers.cpython-39-aarch64-linux-gnu.so
ffffafb78000-ffffafb8f000 ---p 00058000 103:01 3396383 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_bounded_integers.cpython-39-aarch64-linux-gnu.so
ffffafb8f000-ffffafb90000 r--p 0005f000 103:01 3396383 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_bounded_integers.cpython-39-aarch64-linux-gnu.so
ffffafb90000-ffffafb92000 rw-p 00060000 103:01 3396383 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_bounded_integers.cpython-39-aarch64-linux-gnu.so
ffffafb92000-ffffafbd3000 rw-p 00000000 00:00 0
ffffafbd3000-ffffafe22000 r-xp 00000000 103:01 1052042 /usr/lib/aarch64-linux-gnu/libcrypto.so.1.1
ffffafe22000-ffffafe32000 ---p 0024f000 103:01 1052042 /usr/lib/aarch64-linux-gnu/libcrypto.so.1.1
ffffafe32000-ffffafe5b000 r--p 0024f000 103:01 1052042 /usr/lib/aarch64-linux-gnu/libcrypto.so.1.1
ffffafe5b000-ffffafe5d000 rw-p 00278000 103:01 1052042 /usr/lib/aarch64-linux-gnu/libcrypto.so.1.1
ffffafe5d000-ffffafe61000 rw-p 00000000 00:00 0
ffffafe61000-ffffafe6f000 r-xp 00000000 103:01 2644943 /usr/lib/python3.9/lib-dynload/_hashlib.cpython-39-aarch64-linux-gnu.so
ffffafe6f000-ffffafe7f000 ---p 0000e000 103:01 2644943 /usr/lib/python3.9/lib-dynload/_hashlib.cpython-39-aarch64-linux-gnu.so
ffffafe7f000-ffffafe80000 r--p 0000e000 103:01 2644943 /usr/lib/python3.9/lib-dynload/_hashlib.cpython-39-aarch64-linux-gnu.so
ffffafe80000-ffffafe81000 rw-p 0000f000 103:01 2644943 /usr/lib/python3.9/lib-dynload/_hashlib.cpython-39-aarch64-linux-gnu.so
ffffafe81000-ffffafebb000 r-xp 00000000 103:01 3396385 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_common.cpython-39-aarch64-linux-gnu.so
ffffafebb000-ffffafed0000 ---p 0003a000 103:01 3396385 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_common.cpython-39-aarch64-linux-gnu.so
ffffafed0000-ffffafed1000 r--p 0003f000 103:01 3396385 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_common.cpython-39-aarch64-linux-gnu.so
ffffafed1000-ffffafed3000 rw-p 00040000 103:01 3396385 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/_common.cpython-39-aarch64-linux-gnu.so
ffffafed3000-ffffafed4000 rw-p 00000000 00:00 0
ffffafed4000-ffffafefa000 r-xp 00000000 103:01 3396417 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/bit_generator.cpython-39-aarch64-linux-gnu.so
ffffafefa000-ffffaff13000 ---p 00026000 103:01 3396417 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/bit_generator.cpython-39-aarch64-linux-gnu.so
ffffaff13000-ffffaff14000 r--p 0002f000 103:01 3396417 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/bit_generator.cpython-39-aarch64-linux-gnu.so
ffffaff14000-ffffaff19000 rw-p 00030000 103:01 3396417 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/bit_generator.cpython-39-aarch64-linux-gnu.so
ffffaff19000-ffffaff9d000 r-xp 00000000 103:01 3396423 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/mtrand.cpython-39-aarch64-linux-gnu.so
ffffaff9d000-ffffaffb8000 ---p 00084000 103:01 3396423 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/mtrand.cpython-39-aarch64-linux-gnu.so
ffffaffb8000-ffffaffb9000 r--p 0008f000 103:01 3396423 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/mtrand.cpython-39-aarch64-linux-gnu.so
ffffaffb9000-ffffaffe0000 rw-p 00090000 103:01 3396423 /opt/asr/venv/lib/python3.9/site-packages/numpy/random/mtrand.cpython-39-aarch64-linux-gnu.so
ffffaffe0000-ffffb0021000 rw-p 00000000 00:00 0
ffffb0021000-ffffb0032000 r-xp 00000000 103:01 3396106 /opt/asr/venv/lib/python3.9/site-packages/numpy/fft/_pocketfft_internal.cpython-39-aarch64-linux-gnu.so
ffffb0032000-ffffb0050000 ---p 00011000 103:01 3396106 /opt/asr/venv/lib/python3.9/site-packages/numpy/fft/_pocketfft_internal.cpython-39-aarch64-linux-gnu.so
ffffb0050000-ffffb0051000 r--p 0001f000 103:01 3396106 /opt/asr/venv/lib/python3.9/site-packages/numpy/fft/_pocketfft_internal.cpython-39-aarch64-linux-gnu.so
ffffb0051000-ffffb0052000 rw-p 00020000 103:01 3396106 /opt/asr/venv/lib/python3.9/site-packages/numpy/fft/_pocketfft_internal.cpython-39-aarch64-linux-gnu.so
ffffb0052000-ffffb0112000 rw-p 00000000 00:00 0
ffffb0112000-ffffb013e000 r-xp 00000000 103:01 3396258 /opt/asr/venv/lib/python3.9/site-packages/numpy/linalg/_umath_linalg.cpython-39-aarch64-linux-gnu.so
ffffb013e000-ffffb0151000 ---p 0002c000 103:01 3396258 /opt/asr/venv/lib/python3.9/site-packages/numpy/linalg/_umath_linalg.cpython-39-aarch64-linux-gnu.so
ffffb0151000-ffffb0152000 r--p 0002f000 103:01 3396258 /opt/asr/venv/lib/python3.9/site-packages/numpy/linalg/_umath_linalg.cpython-39-aarch64-linux-gnu.so
ffffb0152000-ffffb0154000 rw-p 00030000 103:01 3396258 /opt/asr/venv/lib/python3.9/site-packages/numpy/linalg/_umath_linalg.cpython-39-aarch64-linux-gnu.so
ffffb0154000-ffffb0162000 ---p 00042000 103:01 3396258 /opt/asr/venv/lib/python3.9/site-packages/numpy/linalg/_umath_linalg.cpython-39-aarch64-linux-gnu.so
ffffb0162000-ffffb0164000 rw-p 00040000 103:01 3396258 /opt/asr/venv/lib/python3.9/site-packages/numpy/linalg/_umath_linalg.cpython-39-aarch64-linux-gnu.so
ffffb0164000-ffffb0172000 ---p 00052000 103:01 3396258 /opt/asr/venv/lib/python3.9/site-packages/numpy/linalg/_umath_linalg.cpython-39-aarch64-linux-gnu.so
ffffb0172000-ffffb0174000 rw-p 00050000 103:01 3396258 /opt/asr/venv/lib/python3.9/site-packages/numpy/linalg/_umath_linalg.cpython-39-aarch64-linux-gnu.so
ffffb0174000-ffffb01f4000 rw-p 00000000 00:00 0
ffffb01f4000-ffffb020f000 r-xp 00000000 103:01 2644937 /usr/lib/python3.9/lib-dynload/_ctypes.cpython-39-aarch64-linux-gnu.so
ffffb020f000-ffffb021e000 ---p 0001b000 103:01 2644937 /usr/lib/python3.9/lib-dynload/_ctypes.cpython-39-aarch64-linux-gnu.so
ffffb021e000-ffffb021f000 r--p 0001a000 103:01 2644937 /usr/lib/python3.9/lib-dynload/_ctypes.cpython-39-aarch64-linux-gnu.so
ffffb021f000-ffffb0223000 rw-p 0001b000 103:01 2644937 /usr/lib/python3.9/lib-dynload/_ctypes.cpython-39-aarch64-linux-gnu.so
ffffb0223000-ffffb02a3000 rw-p 00000000 00:00 0
ffffb02a3000-ffffb02c9000 r-xp 00000000 103:01 3395557 /opt/asr/venv/lib/python3.9/site-packages/numpy/core/_multiarray_tests.cpython-39-aarch64-linux-gnu.so
ffffb02c9000-ffffb02e2000 ---p 00026000 103:01 3395557 /opt/asr/venv/lib/python3.9/site-packages/numpy/core/_multiarray_tests.cpython-39-aarch64-linux-gnu.so
ffffb02e2000-ffffb02e3000 r--p 0002f000 103:01 3395557 /opt/asr/venv/lib/python3.9/site-packages/numpy/core/_multiarray_tests.cpython-39-aarch64-linux-gnu.so
ffffb02e3000-ffffb02e5000 rw-p 00030000 103:01 3395557 /opt/asr/venv/lib/python3.9/site-packages/numpy/core/_multiarray_tests.cpython-39-aarch64-linux-gnu.so
ffffb02e5000-ffffb04a5000 rw-p 00000000 00:00 0
ffffb04ae000-ffffb44ee000 rw-p 00000000 00:00 0
ffffb44ee000-ffffb44ef000 ---p 00000000 00:00 0
ffffb44ef000-ffffb6cef000 rw-p 00000000 00:00 0
ffffb6cef000-ffffb6cf0000 ---p 00000000 00:00 0
ffffb6cf0000-ffffb74f0000 rw-p 00000000 00:00 0
ffffb74f0000-ffffb74f1000 ---p 00000000 00:00 0
ffffb74f1000-ffffb7cf1000 rw-p 00000000 00:00 0
ffffb7cf1000-ffffb7d04000 r-xp 00000000 103:01 779819 /usr/lib/aarch64-linux-gnu/libgcc_s.so.1
ffffb7d04000-ffffb7d13000 ---p 00013000 103:01 779819 /usr/lib/aarch64-linux-gnu/libgcc_s.so.1
ffffb7d13000-ffffb7d14000 r--p 00012000 103:01 779819 /usr/lib/aarch64-linux-gnu/libgcc_s.so.1
ffffb7d14000-ffffb7d15000 rw-p 00013000 103:01 779819 /usr/lib/aarch64-linux-gnu/libgcc_s.so.1
ffffb7d1e000-ffffb7e65000 r-xp 00000000 103:01 2646004 /opt/asr/venv/lib/python3.9/site-packages/numpy.libs/libgfortran-daac5196.so.5.0.0
ffffb7e65000-ffffb7e7d000 ---p 00147000 103:01 2646004 /opt/asr/venv/lib/python3.9/site-packages/numpy.libs/libgfortran-daac5196.so.5.0.0
ffffb7e7d000-ffffb7e7e000 r--p 0014f000 103:01 2646004 /opt/asr/venv/lib/python3.9/site-packages/numpy.libs/libgfortran-daac5196.so.5.0.0
ffffb7e7e000-ffffb7e7f000 rw-p 00150000 103:01 2646004 /opt/asr/venv/lib/python3.9/site-packages/numpy.libs/libgfortran-daac5196.so.5.0.0
ffffb7e7f000-ffffb7e80000 rw-p 00000000 00:00 0
ffffb7e80000-ffffb7e8e000 ---p 00162000 103:01 2646004 /opt/asr/venv/lib/python3.9/site-packages/numpy.libs/libgfortran-daac5196.so.5.0.0
ffffb7e8e000-ffffb7e99000 rw-p 00160000 103:01 2646004 /opt/asr/venv/lib/python3.9/site-packages/numpy.libs/libgfortran-daac5196.so.5.0.0
ffffb7e99000-ffffb942d000 r-xp 00000000 103:01 2646005 /opt/asr/venv/lib/python3.9/site-packages/numpy.libs/libopenblas64_p-r0-9c1f2efe.3.20.so
ffffb942d000-ffffb9443000 ---p 01594000 103:01 2646005 /opt/asr/venv/lib/python3.9/site-packages/numpy.libs/libopenblas64_p-r0-9c1f2efe.3.20.so
ffffb9443000-ffffb9449000 r--p 0159a000 103:01 2646005 /opt/asr/venv/lib/python3.9/site-packages/numpy.libs/libopenblas64_p-r0-9c1f2efe.3.20.so
ffffb9449000-ffffb9462000 rw-p 015a0000 103:01 2646005 /opt/asr/venv/lib/python3.9/site-packages/numpy.libs/libopenblas64_p-r0-9c1f2efe.3.20.so
ffffb9462000-ffffb9468000 rw-p 00000000 00:00 0
ffffb9468000-ffffb9469000 ---p 015cf000 103:01 2646005 /opt/asr/venv/lib/python3.9/site-packages/numpy.libs/libopenblas64_p-r0-9c1f2efe.3.20.so
ffffb9469000-ffffb94bb000 rw-p 01760000 103:01 2646005 /opt/asr/venv/lib/python3.9/site-packages/numpy.libs/libopenblas64_p-r0-9c1f2efe.3.20.so
ffffb94bb000-ffffb94c9000 ---p 01622000 103:01 2646005 /opt/asr/venv/lib/python3.9/site-packages/numpy.libs/libopenblas64_p-r0-9c1f2efe.3.20.so
ffffb94c9000-ffffb9503000 rw-p 017c0000 103:01 2646005 /opt/asr/venv/lib/python3.9/site-packages/numpy.libs/libopenblas64_p-r0-9c1f2efe.3.20.so
ffffb9503000-ffffb98ab000 r-xp 00000000 103:01 3395558 /opt/asr/venv/lib/python3.9/site-packages/numpy/core/_multiarray_umath.cpython-39-aarch64-linux-gnu.so
ffffb98ab000-ffffb98c1000 ---p 003a8000 103:01 3395558 /opt/asr/venv/lib/python3.9/site-packages/numpy/core/_multiarray_umath.cpython-39-aarch64-linux-gnu.so
ffffb98c1000-ffffb98c3000 r--p 003ae000 103:01 3395558 /opt/asr/venv/lib/python3.9/site-packages/numpy/core/_multiarray_umath.cpython-39-aarch64-linux-gnu.so
ffffb98c3000-ffffb98e5000 rw-p 003b0000 103:01 3395558 /opt/asr/venv/lib/python3.9/site-packages/numpy/core/_multiarray_umath.cpython-39-aarch64-linux-gnu.so
ffffb98e5000-ffffb9905000 rw-p 00000000 00:00 0
ffffb9905000-ffffb9913000 ---p 00402000 103:01 3395558 /opt/asr/venv/lib/python3.9/site-packages/numpy/core/_multiarray_umath.cpython-39-aarch64-linux-gnu.so
ffffb9913000-ffffb9917000 rw-p 00430000 103:01 3395558 /opt/asr/venv/lib/python3.9/site-packages/numpy/core/_multiarray_umath.cpython-39-aarch64-linux-gnu.so
ffffb9917000-ffffb9923000 ---p 00414000 103:01 3395558 /opt/asr/venv/lib/python3.9/site-packages/numpy/core/_multiarray_umath.cpython-39-aarch64-linux-gnu.so
ffffb9923000-ffffb9926000 rw-p 00440000 103:01 3395558 /opt/asr/venv/lib/python3.9/site-packages/numpy/core/_multiarray_umath.cpython-39-aarch64-linux-gnu.so
ffffb9926000-ffffb9932000 r-xp 00000000 103:01 2644944 /usr/lib/python3.9/lib-dynload/_json.cpython-39-aarch64-linux-gnu.so
ffffb9932000-ffffb9941000 ---p 0000c000 103:01 2644944 /usr/lib/python3.9/lib-dynload/_json.cpython-39-aarch64-linux-gnu.so
ffffb9941000-ffffb9942000 r--p 0000b000 103:01 2644944 /usr/lib/python3.9/lib-dynload/_json.cpython-39-aarch64-linux-gnu.so
ffffb9942000-ffffb9943000 rw-p 0000c000 103:01 2644944 /usr/lib/python3.9/lib-dynload/_json.cpython-39-aarch64-linux-gnu.so
ffffb9943000-ffffb9b43000 rw-p 00000000 00:00 0
ffffb9b46000-ffffb9b4e000 r-xp 00000000 103:01 779814 /usr/lib/aarch64-linux-gnu/libffi.so.7.1.0
ffffb9b4e000-ffffb9b5d000 ---p 00008000 103:01 779814 /usr/lib/aarch64-linux-gnu/libffi.so.7.1.0
ffffb9b5d000-ffffb9b5e000 r--p 00007000 103:01 779814 /usr/lib/aarch64-linux-gnu/libffi.so.7.1.0
ffffb9b5e000-ffffb9b5f000 rw-p 00008000 103:01 779814 /usr/lib/aarch64-linux-gnu/libffi.so.7.1.0
ffffb9b68000-ffffb9ca8000 rw-p 00000000 00:00 0
ffffb9ca8000-ffffb9cda000 r--p 00000000 103:01 1308835 /usr/lib/locale/C.UTF-8/LC_CTYPE
ffffb9cda000-ffffb9cdc000 rw-p 00000000 00:00 0
ffffb9cdc000-ffffb9cf5000 r-xp 00000000 103:01 779922 /usr/lib/aarch64-linux-gnu/libz.so.1.2.11
ffffb9cf5000-ffffb9d04000 ---p 00019000 103:01 779922 /usr/lib/aarch64-linux-gnu/libz.so.1.2.11
ffffb9d04000-ffffb9d05000 r--p 00018000 103:01 779922 /usr/lib/aarch64-linux-gnu/libz.so.1.2.11
ffffb9d05000-ffffb9d06000 rw-p 00019000 103:01 779922 /usr/lib/aarch64-linux-gnu/libz.so.1.2.11
ffffb9d06000-ffffb9d2a000 r-xp 00000000 103:01 1052090 /usr/lib/aarch64-linux-gnu/libexpat.so.1.6.11
ffffb9d2a000-ffffb9d3a000 ---p 00024000 103:01 1052090 /usr/lib/aarch64-linux-gnu/libexpat.so.1.6.11
ffffb9d3a000-ffffb9d3c000 r--p 00024000 103:01 1052090 /usr/lib/aarch64-linux-gnu/libexpat.so.1.6.11
ffffb9d3c000-ffffb9d3d000 rw-p 00026000 103:01 1052090 /usr/lib/aarch64-linux-gnu/libexpat.so.1.6.11
ffffb9d3d000-ffffb9dd6000 r-xp 00000000 103:01 779836 /usr/lib/aarch64-linux-gnu/libm-2.31.so
ffffb9dd6000-ffffb9de6000 ---p 00099000 103:01 779836 /usr/lib/aarch64-linux-gnu/libm-2.31.so
ffffb9de6000-ffffb9de7000 r--p 00099000 103:01 779836 /usr/lib/aarch64-linux-gnu/libm-2.31.so
ffffb9de7000-ffffb9de8000 rw-p 0009a000 103:01 779836 /usr/lib/aarch64-linux-gnu/libm-2.31.so
ffffb9de8000-ffffb9dea000 r-xp 00000000 103:01 779917 /usr/lib/aarch64-linux-gnu/libutil-2.31.so
ffffb9dea000-ffffb9dfa000 ---p 00002000 103:01 779917 /usr/lib/aarch64-linux-gnu/libutil-2.31.so
ffffb9dfa000-ffffb9dfb000 r--p 00002000 103:01 779917 /usr/lib/aarch64-linux-gnu/libutil-2.31.so
ffffb9dfb000-ffffb9dfc000 rw-p 00003000 103:01 779917 /usr/lib/aarch64-linux-gnu/libutil-2.31.so
ffffb9dfc000-ffffb9dff000 r-xp 00000000 103:01 779805 /usr/lib/aarch64-linux-gnu/libdl-2.31.so
ffffb9dff000-ffffb9e0e000 ---p 00003000 103:01 779805 /usr/lib/aarch64-linux-gnu/libdl-2.31.so
ffffb9e0e000-ffffb9e0f000 r--p 00002000 103:01 779805 /usr/lib/aarch64-linux-gnu/libdl-2.31.so
ffffb9e0f000-ffffb9e10000 rw-p 00003000 103:01 779805 /usr/lib/aarch64-linux-gnu/libdl-2.31.so
ffffb9e10000-ffffb9e2c000 r-xp 00000000 103:01 779886 /usr/lib/aarch64-linux-gnu/libpthread-2.31.so
ffffb9e2c000-ffffb9e3b000 ---p 0001c000 103:01 779886 /usr/lib/aarch64-linux-gnu/libpthread-2.31.so
ffffb9e3b000-ffffb9e3c000 r--p 0001b000 103:01 779886 /usr/lib/aarch64-linux-gnu/libpthread-2.31.so
ffffb9e3c000-ffffb9e3d000 rw-p 0001c000 103:01 779886 /usr/lib/aarch64-linux-gnu/libpthread-2.31.so
ffffb9e3d000-ffffb9e41000 rw-p 00000000 00:00 0
ffffb9e41000-ffffb9f9c000 r-xp 00000000 103:01 779794 /usr/lib/aarch64-linux-gnu/libc-2.31.so
ffffb9f9c000-ffffb9fab000 ---p 0015b000 103:01 779794 /usr/lib/aarch64-linux-gnu/libc-2.31.so
ffffb9fab000-ffffb9faf000 r--p 0015a000 103:01 779794 /usr/lib/aarch64-linux-gnu/libc-2.31.so
ffffb9faf000-ffffb9fb1000 rw-p 0015e000 103:01 779794 /usr/lib/aarch64-linux-gnu/libc-2.31.so
ffffb9fb1000-ffffb9fb4000 rw-p 00000000 00:00 0
ffffb9fb4000-ffffb9fb6000 r-xp 00000000 103:01 779776 /usr/lib/aarch64-linux-gnu/libSegFault.so
ffffb9fb6000-ffffb9fc5000 ---p 00002000 103:01 779776 /usr/lib/aarch64-linux-gnu/libSegFault.so
ffffb9fc5000-ffffb9fc6000 r--p 00001000 103:01 779776 /usr/lib/aarch64-linux-gnu/libSegFault.so
ffffb9fc6000-ffffb9fc7000 rw-p 00002000 103:01 779776 /usr/lib/aarch64-linux-gnu/libSegFault.so
ffffb9fc7000-ffffb9fe8000 r-xp 00000000 103:01 779772 /usr/lib/aarch64-linux-gnu/ld-2.31.so
ffffb9fe8000-ffffb9fea000 rw-p 00000000 00:00 0
ffffb9fec000-ffffb9ff3000 r--s 00000000 103:01 1044028 /usr/lib/aarch64-linux-gnu/gconv/gconv-modules.cache
ffffb9ff3000-ffffb9ff5000 rw-p 00000000 00:00 0
ffffb9ff5000-ffffb9ff7000 r--p 00000000 00:00 0 [vvar]
ffffb9ff7000-ffffb9ff8000 r-xp 00000000 00:00 0 [vdso]
ffffb9ff8000-ffffb9ff9000 r--p 00021000 103:01 779772 /usr/lib/aarch64-linux-gnu/ld-2.31.so
ffffb9ff9000-ffffb9ffb000 rw-p 00022000 103:01 779772 /usr/lib/aarch64-linux-gnu/ld-2.31.so
ffffdde9c000-ffffddebd000 rw-p 00000000 00:00 0 [stack]   
```