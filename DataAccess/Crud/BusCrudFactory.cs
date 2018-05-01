﻿using System;
using System.Collections.Generic;
using DataAccess.Dao;
using DataAccess.Mapper;
using Entities;

namespace DataAccess.Crud
{
    public class BusCrudFactory : CrudFactory
    {
        BusMapper _mapper;

        public BusCrudFactory() : base()
        {
            _mapper = new BusMapper();
            dao = SqlDao.GetInstance();
        }

        public override void Create(BaseEntity entity)
        {
            var sqlOperation = _mapper.GetCreateStatement(entity);
            dao.ExecuteProcedure(sqlOperation);
        }

        public override void Delete(BaseEntity entity)
        {
            throw new NotImplementedException();
        }

        public override T Retrieve<T>(BaseEntity entity)
        {
            var lstResult = dao.ExecuteQueryProcedure(_mapper.GetRetriveStatement(entity));
            var dic = new Dictionary<string, object>();

            if (lstResult.Count > 0)
            {
                dic = lstResult[0];

                var objs = _mapper.BuildObject(dic);

                return (T)Convert.ChangeType(objs, typeof(T));
            }

            return default(T);
        }

        public override List<T> RetrieveAll<T>()
        {
            var listCards = new List<T>();
            var resultados = dao.ExecuteQueryProcedure(_mapper.GetRetriveAllStatement());

            if (resultados.Count > 0)
            {
                var objs = _mapper.BuildObjects(resultados);

                foreach (var c in objs)
                {
                    listCards.Add((T)Convert.ChangeType(c, typeof(T)));
                }
            }

            return listCards;
        }

        public override void Update(BaseEntity entity)
        {
            dao.ExecuteProcedure(_mapper.GetUpdateStatement(entity));
        }

        public void UpdateEstado(BaseEntity entity)
        {
            dao.ExecuteProcedure(_mapper.GetUpdateEstadoStatement(entity));
        }
    }
}