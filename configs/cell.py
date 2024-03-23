import os
from .default import DefaultEngineConfig


class EngineConfig(DefaultEngineConfig):
    def __init__(self, exp_name='default', model='AOTT'):
        super().__init__(exp_name, model)
        self.STAGE_NAME = 'cell'
        self.DATASETS = ['cell']
        self.TRAIN_BATCH_SIZE = 8
        self.MODEL_MAX_OBJ_NUM = 30
        self.TRAIN_SAVE_STEP = 1
        self.init_dir()




