using {ao.test as t} from '../db/model';

service WorkOrderService {
    entity Jobs as projection on t.Jobs;
}
