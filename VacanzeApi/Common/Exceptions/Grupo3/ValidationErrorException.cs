using System;

namespace vacanze_back.VacanzeApi.Common.Exceptions.Grupo12
{
    public class ValidationErrorException : Exception
    {
        public ValidationErrorException()
        {
        }

        public ValidationErrorException(string message)
            : base(message)
        {
        }

        public ValidationErrorException(string message, Exception inner)
            : base(message, inner)
        {
        }
    }
}