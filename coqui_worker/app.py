from os.path import exists
from pathlib import Path

import numpy as np
import wget
from stt import Model


def seg_fault() -> None:
    model_path = "/tmp/model.tflite"
    scorer_path = "/tmp/kenlm_es.scorer"

    if not (exists(model_path)):
        wget.download("https://coqui.gateway.scarf.sh/spanish/jaco-assistant/v0.0.1/model.tflite", out=model_path)

    if not (exists(scorer_path)):
        wget.download("https://coqui.gateway.scarf.sh/spanish/jaco-assistant/v0.0.1/kenlm_es.scorer", out=scorer_path)

    model = Model(Path(model_path).absolute().as_posix())
    model.enableExternalScorer(Path(scorer_path).absolute().as_posix())
    stream_context = model.createStream()
    stream_context.feedAudioContent(np.zeros(int(16000 / 2), np.int16))
    inference = stream_context.finishStream()


if __name__ == "__main__":
    seg_fault()
